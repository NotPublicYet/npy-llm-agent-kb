# news-2026-10-24-release-publish-68bc4fc69776-1792777683-perf-plugins-reduce

Automation: NewsIngest/v1
SourceID: openclaw-releases
SourceURL: https://github.com/openclaw/openclaw/releases/tag/release-publish%2F68bc4fc69776-1792777683
IngestedAt: 2026-10-24
Status: Untriaged
Submitted date: 2026-10-24
Submitter: @news-bot
Proposed destination: 09_resources/news/
Sensitivity notes: Public source material only

Date Captured: 2026-10-24
Event Date: 2026-10-23
Publish Date: 2026-10-23
Source: OpenClaw Releases
URL: https://github.com/openclaw/openclaw/releases/tag/release-publish%2F68bc4fc69776-1792777683
Type: News
Confidence: High
Validation Status: valid

## Summary
<ul>
<li>perf(plugins): restore invocation and recovery scopes together</li>
</ul>
<p>Remove one native context-map restore and the per-entry recovery resolver. Preserve mutable Gateway views, exact recovery-source identity, and all instance and delegated authority fences. Add paired plugin RPC measurement with optional pacing.</p>
<ul>
<li>
<p>fix(plugins): preserve optional recovery owner in scope type</p>
</li>
<li>
<p>test(perf): support settled run history in team fixtures</p>
</li>
<li>
<p>test(perf): verify plugin scope against installed source</p>
</li>
<li>
<p>test(plugins): migrate remaining recovery context callers</p>
</li>
<li>
<p>test(plugins): account for recovery store in scope entry count</p>
</li>
</ul>

## Why It Matters
Source signal: <ul>
<li>perf(plugins): restore invocation and recovery scopes together</li>
</ul>
<p>Remove one native context-map restore and the per-entry recovery resolver. Preserve mutable Gateway views, exact recovery-source identity, and all instance and delegated authority fences. Add paired plugin RPC measurement with optional pacing.</p>
<ul>
<li>
<p>fix(plugins): preserve optional recovery owner in scope type</p>
</li>
<li>
<p>test(perf): support settled run history in team fixtures</p>
</li>
<li>
<p>test(perf): verify plugin scope against installed source</p>
</li>
<li>
<p>test(plugins): migrate remaining recovery context callers</p>
</li>
<li>
<p>test(plugins): account for recovery store in scope entry count</p>
</li>
</ul>
Implication: May require updating model/tool selection, baseline comparisons, and ongoing experiment assumptions.

## Evidence/Quotes (short)
- Source URL only. Add short excerpts during triage if needed.

## Relevance to NPY
TBD

## Suggested Action
- Triage into 09_resources/news/
- Add question: 01_questions/...
- Add experiment: 03_experiments/...
