param(
  [string]$InputPath,
  [string]$OutputPath,
  [string]$InvalidPath,
  [string]$MetaPath
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

. (Join-Path $PSScriptRoot "common.ps1")

$repoRoot = Get-RepoRoot
if (-not $InputPath) { $InputPath = Join-Path $repoRoot "automation\reports\_tmp\deduped.json" }
if (-not $OutputPath) { $OutputPath = Join-Path $repoRoot "automation\reports\_tmp\validated.json" }
if (-not $InvalidPath) { $InvalidPath = Join-Path $repoRoot "automation\reports\_tmp\invalid.json" }
if (-not $MetaPath) { $MetaPath = Join-Path $repoRoot "automation\reports\_tmp\validate-meta.json" }

$now = [datetime]::UtcNow
$items = Read-JsonFile -Path $InputPath
if ($null -eq $items) { $items = @() }

$validated = @()
$invalid = @()

foreach ($item in @($items)) {
  $errors = @()
  $status = "valid"

  if (-not $item.title -or [string]::IsNullOrWhiteSpace([string]$item.title)) { $errors += "missing_title" }
  if (-not $item.canonical_url -or [string]::IsNullOrWhiteSpace([string]$item.canonical_url)) { $errors += "missing_url" }

  $pubDate = Parse-DateSafe -Text ([string]$item.publish_date)
  if ($null -eq $pubDate) { $errors += "missing_or_invalid_publish_date"; $status = "needs_triage" }

  $eventDate = Parse-DateSafe -Text ([string]$item.event_date)
  if ($null -eq $eventDate) { $status = "needs_triage" }

  if ($null -ne $eventDate -and $null -ne $pubDate -and $eventDate.ToUniversalTime() -gt $pubDate.ToUniversalTime()) {
    $errors += "event_after_publish"
    $status = "invalid"
  }

  if ($null -ne $pubDate -and $pubDate.ToUniversalTime() -gt $now.AddDays(1)) {
    $errors += "publish_in_future"
    $status = "invalid"
  }

  if (@($errors).Count -gt 0 -and $status -eq "valid") { $status = "invalid" }

  $publishText = "TBD"
  if ($item.publish_date) { $publishText = [string]$item.publish_date }
  $eventText = "TBD"
  if ($item.event_date) { $eventText = [string]$item.event_date }

  $out = [pscustomobject]@{
    source_id         = [string]$item.source_id
    source_name       = [string]$item.source_name
    source_url        = [string]$item.source_url
    category          = [string]$item.category
    priority          = [string]$item.priority
    title             = [string]$item.title
    canonical_url     = [string]$item.canonical_url
    publish_date      = $publishText
    event_date        = $eventText
    summary           = [string]$item.summary
    fetched_at        = [string]$item.fetched_at
    dedupe_hash       = [string]$item.dedupe_hash
    validation_status = $status
    validation_errors = $errors
    needs_triage      = ($status -ne "valid")
  }

  $validated += $out
  if ($status -eq "invalid") { $invalid += $out }
}

Write-JsonFile -Object $validated -Path $OutputPath
Write-JsonFile -Object $invalid -Path $InvalidPath
Write-JsonFile -Object ([pscustomobject]@{
  run_utc       = $now.ToString("o")
  input_total   = @($items).Count
  invalid_total = @($invalid).Count
  output_total  = @($validated).Count
}) -Path $MetaPath

Write-Host "Validated $(@($validated).Count) item(s); invalid: $(@($invalid).Count)."
