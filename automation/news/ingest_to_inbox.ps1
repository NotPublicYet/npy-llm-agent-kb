param(
  [string]$InputPath,
  [string]$InboxDir,
  [string]$ManifestPath,
  [string]$RunDate = ([datetime]::UtcNow.ToString("yyyy-MM-dd"))
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

. (Join-Path $PSScriptRoot "common.ps1")

function New-WhyItMattersText {
  param(
    [string]$Title,
    [string]$Summary,
    [string]$SourceName
  )

  $t = if ($Title) { $Title.ToLowerInvariant() } else { "" }
  $s = if ($Summary) { $Summary } else { "" }

  $impact = "Potentially relevant for our LLM/Agent roadmap, and should be triaged for question/eval updates."
  if ($t -match 'release|launch|new model|gemini|gpt|claude|llama|version|update') {
    $impact = "May require updating model/tool selection, baseline comparisons, and ongoing experiment assumptions."
  }
  elseif ($t -match 'safety|alignment|security|policy|governance') {
    $impact = "May affect safety/alignment policy, evaluation criteria, and internal governance guidance."
  }
  elseif ($t -match 'benchmark|eval|reasoning|proof|agent|tool') {
    $impact = "May impact evaluation design, benchmark baselines, and reusable agent/tool patterns."
  }
  elseif ($t -match 'open source|weights|sdk|api|inference|training') {
    $impact = "May create implementation opportunities for components, workflows, or cost/performance optimization."
  }

  if (-not [string]::IsNullOrWhiteSpace($s) -and $s -ne 'TBD') {
    return "Source signal: " + $s + "`n" + "Implication: " + $impact
  }

  if (-not [string]::IsNullOrWhiteSpace($SourceName)) {
    return "This update from " + $SourceName + " is likely to influence our near-term planning and should be triaged into questions/evals. " + $impact
  }

  return $impact
}

$repoRoot = Get-RepoRoot
if (-not $InputPath) { $InputPath = Join-Path $repoRoot "automation\reports\_tmp\validated.json" }
if (-not $InboxDir) { $InboxDir = Join-Path $repoRoot "90_inbox" }
if (-not $ManifestPath) { $ManifestPath = Join-Path $repoRoot "automation\reports\_tmp\ingest-manifest.json" }

Ensure-Directory -Path $InboxDir
$items = Read-JsonFile -Path $InputPath
if ($null -eq $items) { $items = @() }

$existingUrls = New-Object System.Collections.Generic.HashSet[string]
$existingFiles = Get-ChildItem -LiteralPath $InboxDir -Filter "news-*.md" -File -ErrorAction SilentlyContinue
foreach ($file in @($existingFiles)) {
  $line = Select-String -Path $file.FullName -Pattern "^SourceURL:\s*(.+)$" -AllMatches | Select-Object -First 1
  if ($null -ne $line) {
    $url = $line.Matches[0].Groups[1].Value.Trim()
    if (-not [string]::IsNullOrWhiteSpace($url)) { [void]$existingUrls.Add($url) }
  }
}

$created = @()
$skipped = @()
$index = @{}

foreach ($item in @($items)) {
  $url = [string]$item.canonical_url
  if ([string]::IsNullOrWhiteSpace($url)) { $skipped += [pscustomobject]@{ reason = "missing_url"; title = [string]$item.title }; continue }
  if ($existingUrls.Contains($url)) { $skipped += [pscustomobject]@{ reason = "existing_url"; title = [string]$item.title; url = $url }; continue }

  $slug = ConvertTo-Slug -Text ([string]$item.title)
  if (-not $index.ContainsKey($slug)) { $index[$slug] = 0 }
  $index[$slug] += 1
  if ($index[$slug] -gt 1) { $slug = "$slug-$($index[$slug])" }

  $fileName = "news-$RunDate-$slug.md"
  $path = Join-Path $InboxDir $fileName

  $confidence = Get-ConfidenceFromPriority -Priority ([string]$item.priority)
  $publishDate = if ($item.publish_date -and $item.publish_date -ne "") { [string]$item.publish_date } else { "TBD" }
  $eventDate = if ($item.event_date -and $item.event_date -ne "") { [string]$item.event_date } else { "TBD" }
  $summary = if ($item.summary -and $item.summary -ne "") { [string]$item.summary } else { "TBD" }
  $validationStatus = if ($item.validation_status) { [string]$item.validation_status } else { "valid" }
  $whyItMatters = New-WhyItMattersText -Title ([string]$item.title) -Summary $summary -SourceName ([string]$item.source_name)

  $body = @"
# news-$RunDate-$slug

Automation: NewsIngest/v1
SourceID: $([string]$item.source_id)
SourceURL: $url
IngestedAt: $RunDate
Status: Untriaged
Submitted date: $RunDate
Submitter: @news-bot
Proposed destination: 09_resources/news/
Sensitivity notes: Public source material only

Date Captured: $RunDate
Event Date: $eventDate
Publish Date: $publishDate
Source: $([string]$item.source_name)
URL: $url
Type: News
Confidence: $confidence
Validation Status: $validationStatus

## Summary
$summary

## Why It Matters
$whyItMatters

## Evidence/Quotes (short)
- Source URL only. Add short excerpts during triage if needed.

## Relevance to NPY
TBD

## Suggested Action
- Triage into 09_resources/news/
- Add question: 01_questions/...
- Add experiment: 03_experiments/...
"@

  $body | Set-Content -LiteralPath $path -Encoding UTF8
  [void]$existingUrls.Add($url)
  $created += $path
}

Write-JsonFile -Object ([pscustomobject]@{
  run_date      = $RunDate
  created_total = @($created).Count
  skipped_total = @($skipped).Count
  created_files = $created
  skipped       = $skipped
}) -Path $ManifestPath

Write-Host "Ingested $(@($created).Count) new inbox file(s); skipped $(@($skipped).Count)."
