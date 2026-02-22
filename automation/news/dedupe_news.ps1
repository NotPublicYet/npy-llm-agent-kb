param(
  [string]$InputPath,
  [string]$OutputPath,
  [string]$StatePath,
  [string]$MetaPath,
  [int]$SeenWindowDays = 30
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

. (Join-Path $PSScriptRoot "common.ps1")

$repoRoot = Get-RepoRoot
if (-not $InputPath) { $InputPath = Join-Path $repoRoot "automation\reports\_tmp\fetched.json" }
if (-not $OutputPath) { $OutputPath = Join-Path $repoRoot "automation\reports\_tmp\deduped.json" }
if (-not $StatePath) { $StatePath = Join-Path $PSScriptRoot "state.json" }
if (-not $MetaPath) { $MetaPath = Join-Path $repoRoot "automation\reports\_tmp\dedupe-meta.json" }

$now = [datetime]::UtcNow
$input = Read-JsonFile -Path $InputPath
if ($null -eq $input) { $input = @() }

$state = Read-JsonFile -Path $StatePath
if ($null -eq $state) {
  $state = [pscustomobject]@{ last_run_at = $null; source_cursors = @{}; seen_hashes = @() }
}
if ($null -eq $state.seen_hashes) { $state | Add-Member -NotePropertyName seen_hashes -NotePropertyValue @() -Force }
if ($null -eq $state.source_cursors) { $state | Add-Member -NotePropertyName source_cursors -NotePropertyValue @{} -Force }

$cutoff = $now.AddDays(-1 * $SeenWindowDays)
$seen = New-Object System.Collections.Generic.HashSet[string]
$retained = @()
foreach ($h in @($state.seen_hashes)) {
  $seenAt = Parse-DateSafe -Text $h.seen_at
  if ($null -eq $seenAt -or $seenAt.ToUniversalTime() -lt $cutoff) { continue }
  [void]$seen.Add([string]$h.hash)
  $retained += [pscustomobject]@{ hash = [string]$h.hash; seen_at = [string]$h.seen_at }
}

$batchSeen = New-Object System.Collections.Generic.HashSet[string]
$out = @()
$dedupedCount = 0

foreach ($item in @($input)) {
  $title = if ($item.title) { [string]$item.title } else { "" }
  $url = if ($item.canonical_url) { [string]$item.canonical_url } else { "" }
  $pub = if ($item.publish_date) { [string]$item.publish_date } else { "" }
  $hash = Get-Sha256 -Text ($url.ToLowerInvariant() + "|" + $title.ToLowerInvariant() + "|" + $pub)

  if ($seen.Contains($hash) -or $batchSeen.Contains($hash)) { $dedupedCount += 1; continue }

  [void]$batchSeen.Add($hash)
  [void]$seen.Add($hash)
  $retained += [pscustomobject]@{ hash = $hash; seen_at = $now.ToString("o") }
  $item | Add-Member -NotePropertyName dedupe_hash -NotePropertyValue $hash -Force
  $out += $item
}

$state.last_run_at = $now.ToString("o")
$state.seen_hashes = $retained

Write-JsonFile -Object $out -Path $OutputPath
Write-JsonFile -Object $state -Path $StatePath
Write-JsonFile -Object ([pscustomobject]@{
  run_utc       = $now.ToString("o")
  input_total   = @($input).Count
  output_total  = @($out).Count
  deduped_total = $dedupedCount
}) -Path $MetaPath

Write-Host "Deduped $(@($input).Count) -> $(@($out).Count) item(s)."
