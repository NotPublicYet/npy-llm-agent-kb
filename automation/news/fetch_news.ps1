param(
  [string]$SourcesPath,
  [string]$OutputPath,
  [string]$MetaPath,
  [int]$HoursBack = 72,
  [int]$TimeoutSec = 30
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

. (Join-Path $PSScriptRoot "common.ps1")

$repoRoot = Get-RepoRoot
if (-not $SourcesPath) { $SourcesPath = Join-Path $PSScriptRoot "sources.yaml" }
if (-not $OutputPath) { $OutputPath = Join-Path $repoRoot "automation\reports\_tmp\fetched.json" }
if (-not $MetaPath) { $MetaPath = Join-Path $repoRoot "automation\reports\_tmp\fetch-meta.json" }

$now = [datetime]::UtcNow
$cutoff = $now.AddHours(-1 * $HoursBack)
$sources = Read-SourcesYaml -Path $SourcesPath | Where-Object { $_.enabled -eq $true }

$all = @()
$failed = @()

foreach ($source in $sources) {
  try {
    if ($source.rss_url -like "http*") {
      $raw = Invoke-WebRequest -Uri $source.rss_url -TimeoutSec $TimeoutSec -UseBasicParsing
    }
    else {
      $raw = [pscustomobject]@{ Content = (Get-Content -Raw -LiteralPath $source.rss_url) }
    }

    [xml]$xml = $raw.Content
    $items = Convert-RssXmlToItems -Xml $xml -Source $source

    foreach ($item in $items) {
      $publishDt = Parse-DateSafe -Text $item.publish_raw
      if ($null -ne $publishDt -and $publishDt.ToUniversalTime() -lt $cutoff) { continue }

      $rawUrl = ""
      if ($item.url) { $rawUrl = [string]$item.url }
      $url = Normalize-Url -Url $rawUrl
      if ($null -eq $url) { continue }

      $publishDate = $null
      if ($null -ne $publishDt) {
        $publishDate = ConvertTo-DateString -DateTime $publishDt.ToUniversalTime()
      }
      $title = if ($item.title) { ([string]$item.title).Trim() } else { "" }
      $summary = if ($item.summary) { ([string]$item.summary).Trim() } else { "" }

      $all += [pscustomobject]@{
        source_id     = $item.source_id
        source_name   = $item.source_name
        source_url    = $item.source_url
        category      = $item.category
        priority      = $item.priority
        title         = $title
        canonical_url = $url
        publish_date  = $publishDate
        event_date    = $publishDate
        summary       = $summary
        fetched_at    = $now.ToString("yyyy-MM-dd")
      }
    }
  }
  catch {
    $failed += [pscustomobject]@{
      source_id = $source.id
      source    = $source.name
      rss_url   = $source.rss_url
      error     = $_.Exception.Message
    }
  }
}

Write-JsonFile -Object $all -Path $OutputPath
Write-JsonFile -Object ([pscustomobject]@{
  run_utc        = $now.ToString("o")
  sources_total  = @($sources).Count
  fetched_total  = @($all).Count
  failed_total   = @($failed).Count
  failed_sources = $failed
}) -Path $MetaPath

Write-Host "Fetched $(@($all).Count) item(s) from $(@($sources).Count) source(s)."
if (@($failed).Count -gt 0) { Write-Host "Failed sources: $(@($failed).Count)" }

