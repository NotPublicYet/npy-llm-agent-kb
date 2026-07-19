# news-2026-07-19-release-publish-556a2ee276f0-20260718-feat-cron-add-per-job

Automation: NewsIngest/v1
SourceID: openclaw-releases
SourceURL: https://github.com/openclaw/openclaw/releases/tag/release-publish%2F556a2ee276f0-20260718
IngestedAt: 2026-07-19
Status: Untriaged
Submitted date: 2026-07-19
Submitter: @news-bot
Proposed destination: 09_resources/news/
Sensitivity notes: Public source material only

Date Captured: 2026-07-19
Event Date: 2026-07-18
Publish Date: 2026-07-18
Source: OpenClaw Releases
URL: https://github.com/openclaw/openclaw/releases/tag/release-publish%2F556a2ee276f0-20260718
Type: News
Confidence: High
Validation Status: valid

## Summary
<p>Add optional per-job pacing bounds across the cron API, CLI, tool schema, public output, and SQLite job envelope, requiring at least one bound. Allow only the currently running paced job to record a one-shot next_check proposal and carry it through isolated-run completion.</p>
<p>After successful runs, clamp the proposal to the job bounds and persist an exact one-shot slot marker so maintenance preserves only that timestamp. Clear the marker on runs, edits, and schedule normalization; preserve existing no-proposal, skip, timeout, and error scheduling behavior.</p>

## Why It Matters
Source signal: <p>Add optional per-job pacing bounds across the cron API, CLI, tool schema, public output, and SQLite job envelope, requiring at least one bound. Allow only the currently running paced job to record a one-shot next_check proposal and carry it through isolated-run completion.</p>
<p>After successful runs, clamp the proposal to the job bounds and persist an exact one-shot slot marker so maintenance preserves only that timestamp. Clear the marker on runs, edits, and schedule normalization; preserve existing no-proposal, skip, timeout, and error scheduling behavior.</p>
Implication: May require updating model/tool selection, baseline comparisons, and ongoing experiment assumptions.

## Evidence/Quotes (short)
- Source URL only. Add short excerpts during triage if needed.

## Relevance to NPY
TBD

## Suggested Action
- Triage into 09_resources/news/
- Add question: 01_questions/...
- Add experiment: 03_experiments/...
