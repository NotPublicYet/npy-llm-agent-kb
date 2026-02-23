Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$repoRoot = (Resolve-Path (Join-Path $PSScriptRoot "..\..\..")).Path
. (Join-Path $repoRoot "automation\news\common.ps1")

function Assert-True {
  param([bool]$Condition, [string]$Message)
  if (-not $Condition) { throw "ASSERT FAILED: $Message" }
}

function Assert-Eq {
  param($Expected, $Actual, [string]$Message)
  if ($Expected -ne $Actual) {
    throw "ASSERT FAILED: $Message. Expected=[$Expected] Actual=[$Actual]"
  }
}

$tempBase = $env:RUNNER_TEMP
if ([string]::IsNullOrWhiteSpace($tempBase)) { $tempBase = $env:TEMP }
if ([string]::IsNullOrWhiteSpace($tempBase)) { $tempBase = $env:TMPDIR }
if ([string]::IsNullOrWhiteSpace($tempBase)) { $tempBase = [System.IO.Path]::GetTempPath() }

$tempRoot = Join-Path $tempBase ("news-pipeline-test-" + [guid]::NewGuid().ToString("N"))
New-Item -ItemType Directory -Path $tempRoot | Out-Null

try {
  Assert-Eq "hello-world" (ConvertTo-Slug -Text "Hello, World!") "slug conversion"
  Assert-Eq "https://example.com/path" (Normalize-Url -Url "https://Example.com/path/?utm_source=x") "url normalization"
  Assert-True ((Get-Sha256 -Text "abc").Length -eq 64) "sha256 length"

  $fetched = Join-Path $tempRoot "fetched.json"
  $records = @(
    [pscustomobject]@{
      source_id="local"; source_name="Local"; source_url="https://example.com/feed"; category="test"; priority="high";
      title="Test One"; canonical_url="https://example.com/a"; publish_date="2024-01-01"; event_date="2024-01-01"; summary="x"; fetched_at="2024-01-01"
    },
    [pscustomobject]@{
      source_id="local"; source_name="Local"; source_url="https://example.com/feed"; category="test"; priority="high";
      title="Test One"; canonical_url="https://example.com/a"; publish_date="2024-01-01"; event_date="2024-01-01"; summary="x2"; fetched_at="2024-01-01"
    }
  )
  $records | ConvertTo-Json -Depth 20 | Set-Content -LiteralPath $fetched -Encoding UTF8

  $statePath = Join-Path $tempRoot "state.json"
  '{"last_run_at":null,"source_cursors":{},"seen_hashes":[]}' | Set-Content -LiteralPath $statePath -Encoding UTF8

  $deduped = Join-Path $tempRoot "deduped.json"
  $dedupeMeta = Join-Path $tempRoot "dedupe-meta.json"
  & (Join-Path $repoRoot "automation\news\dedupe_news.ps1") -InputPath $fetched -OutputPath $deduped -StatePath $statePath -MetaPath $dedupeMeta

  $dedupedData = Read-JsonFile -Path $deduped
  Assert-Eq 1 @($dedupedData).Count "dedupe count"

  Write-Host "All tests passed."
}
finally {
  if (Test-Path -LiteralPath $tempRoot) {
    Remove-Item -LiteralPath $tempRoot -Recurse -Force
  }
}

