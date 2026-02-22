param(
  [string]$FetchMetaPath,
  [string]$DedupeMetaPath,
  [string]$ValidateMetaPath,
  [string]$ManifestPath,
  [string]$ReportDir,
  [string]$InboxDir,
  [string]$RunDate = ([datetime]::UtcNow.ToString("yyyy-MM-dd"))
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

. (Join-Path $PSScriptRoot "common.ps1")

$repoRoot = Get-RepoRoot
if (-not $FetchMetaPath) { $FetchMetaPath = Join-Path $repoRoot "automation\reports\_tmp\fetch-meta.json" }
if (-not $DedupeMetaPath) { $DedupeMetaPath = Join-Path $repoRoot "automation\reports\_tmp\dedupe-meta.json" }
if (-not $ValidateMetaPath) { $ValidateMetaPath = Join-Path $repoRoot "automation\reports\_tmp\validate-meta.json" }
if (-not $ManifestPath) { $ManifestPath = Join-Path $repoRoot "automation\reports\_tmp\ingest-manifest.json" }
if (-not $ReportDir) { $ReportDir = Join-Path $repoRoot "automation\reports" }
if (-not $InboxDir) { $InboxDir = Join-Path $repoRoot "90_inbox" }

Ensure-Directory -Path $ReportDir

$fetchMeta = Read-JsonFile -Path $FetchMetaPath
$dedupeMeta = Read-JsonFile -Path $DedupeMetaPath
$validateMeta = Read-JsonFile -Path $ValidateMetaPath
$manifest = Read-JsonFile -Path $ManifestPath

function ToInt($v) {
  if ($null -eq $v) { return 0 }
  return [int]$v
}

$now = [datetime]::UtcNow
$slaRisks = @()
$files = Get-ChildItem -LiteralPath $InboxDir -Filter "news-*.md" -File -ErrorAction SilentlyContinue
foreach ($file in @($files)) {
  $text = Get-Content -LiteralPath $file.FullName -Raw
  $statusMatch = [regex]::Match($text, "(?m)^Status:\s*(.+)$")
  $ingestedMatch = [regex]::Match($text, "(?m)^IngestedAt:\s*(.+)$")
  if (-not $statusMatch.Success -or -not $ingestedMatch.Success) { continue }

  $status = $statusMatch.Groups[1].Value.Trim()
  if ($status -ne "Untriaged") { continue }

  $ingested = Parse-DateSafe -Text $ingestedMatch.Groups[1].Value.Trim()
  if ($null -eq $ingested) { continue }

  $ageHours = ($now - $ingested.ToUniversalTime()).TotalHours
  if ($ageHours -gt 48) {
    $slaRisks += [pscustomobject]@{
      file = $file.Name
      ingested_at = $ingested.ToString("yyyy-MM-dd")
      age_hours = [math]::Round($ageHours, 1)
    }
  }
}

$reportPath = Join-Path $ReportDir ("news-daily-" + $RunDate + ".md")
$failedSourcesText = "- none"
if ($fetchMeta -and $fetchMeta.failed_sources -and @($fetchMeta.failed_sources).Count -gt 0) {
  $lines = @()
  foreach ($f in @($fetchMeta.failed_sources)) {
    $lines += "- " + [string]$f.source_id + ": " + [string]$f.error
  }
  $failedSourcesText = $lines -join "`n"
}

$slaText = "- none"
if (@($slaRisks).Count -gt 0) {
  $lines = @()
  foreach ($risk in @($slaRisks)) {
    $lines += "- " + [string]$risk.file + " (ingested " + [string]$risk.ingested_at + ", age " + [string]$risk.age_hours + "h)"
  }
  $slaText = $lines -join "`n"
}

$md = @"
# News Daily Report - $RunDate

Run Date: $RunDate

## Metrics
- Fetched: $(ToInt $fetchMeta.fetched_total)
- Created: $(ToInt $manifest.created_total)
- Deduplicated: $(ToInt $dedupeMeta.deduped_total)
- Invalid: $(ToInt $validateMeta.invalid_total)
- SLA Risks (>48h Untriaged): $(@($slaRisks).Count)

## Failed Sources
$failedSourcesText

## SLA Risk Items
$slaText
"@

$md | Set-Content -LiteralPath $reportPath -Encoding UTF8

Write-JsonFile -Object ([pscustomobject]@{
  run_date = $RunDate
  report_path = $reportPath
  sla_risks = $slaRisks
}) -Path (Join-Path $ReportDir "latest-news-report.json")

Write-Host "Wrote report: $reportPath"
