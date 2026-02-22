param(
  [string]$RunDate = ([datetime]::UtcNow.ToString("yyyy-MM-dd"))
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$root = (Resolve-Path (Join-Path $PSScriptRoot "..\..")).Path
$tmp = Join-Path $root "automation\reports\_tmp"
if (-not (Test-Path -LiteralPath $tmp)) {
  New-Item -ItemType Directory -Path $tmp | Out-Null
}

& (Join-Path $PSScriptRoot "fetch_news.ps1")
& (Join-Path $PSScriptRoot "dedupe_news.ps1")
& (Join-Path $PSScriptRoot "validate_news.ps1")
& (Join-Path $PSScriptRoot "ingest_to_inbox.ps1") -RunDate $RunDate
& (Join-Path $PSScriptRoot "build_report.ps1") -RunDate $RunDate

Write-Host "News pipeline completed for $RunDate"
