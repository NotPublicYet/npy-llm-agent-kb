# news-2026-10-12-release-publish-2040d1b71db9-1791766004-perf-sessions-reuse

Automation: NewsIngest/v1
SourceID: openclaw-releases
SourceURL: https://github.com/openclaw/openclaw/releases/tag/release-publish%2F2040d1b71db9-1791766004
IngestedAt: 2026-10-12
Status: Untriaged
Submitted date: 2026-10-12
Submitter: @news-bot
Proposed destination: 09_resources/news/
Sensitivity notes: Public source material only

Date Captured: 2026-10-12
Event Date: 2026-10-11
Publish Date: 2026-10-11
Source: OpenClaw Releases
URL: https://github.com/openclaw/openclaw/releases/tag/release-publish%2F2040d1b71db9-1791766004
Type: News
Confidence: High
Validation Status: valid

## Summary
<ul>
<li>perf(sessions): reuse config-owned roster and projection facts</li>
</ul>
<p>Retain roster facts for the published config revision and model facts across<br>
row-only publications. Let selection and facts publications retire list caches<br>
while preserving materialization-scoped weak presentations.</p>
<p>Keep independent mutable inputs batch-scoped and invalidate same-object config<br>
republication. Exercise configuration refresh through the actual publisher.</p>
<ul>
<li>fix(sessions): keep roster publication reads import-light</li>
</ul>
<p>Publish config identity and revision before observers through an import-free<br>
leaf so roster reads do not introduce a full-graph import cycle. Include the<br>
leaf in the extracted maintainer runtime and retire its eligibility on reset.</p>
<p>Prove model metadata reuse through updated session-list output and catalog<br>
lookup counts instead of asserting empty cache-map identity.</p>
<ul>
<li>
<p>test(gateway): type mutable catalog regression entries</p>
</li>
<li>
<p>test(gateway): keep catalog regression on API capacity</p>
</li>
</ul>

## Why It Matters
Source signal: <ul>
<li>perf(sessions): reuse config-owned roster and projection facts</li>
</ul>
<p>Retain roster facts for the published config revision and model facts across<br>
row-only publications. Let selection and facts publications retire list caches<br>
while preserving materialization-scoped weak presentations.</p>
<p>Keep independent mutable inputs batch-scoped and invalidate same-object config<br>
republication. Exercise configuration refresh through the actual publisher.</p>
<ul>
<li>fix(sessions): keep roster publication reads import-light</li>
</ul>
<p>Publish config identity and revision before observers through an import-free<br>
leaf so roster reads do not introduce a full-graph import cycle. Include the<br>
leaf in the extracted maintainer runtime and retire its eligibility on reset.</p>
<p>Prove model metadata reuse through updated session-list output and catalog<br>
lookup counts instead of asserting empty cache-map identity.</p>
<ul>
<li>
<p>test(gateway): type mutable catalog regression entries</p>
</li>
<li>
<p>test(gateway): keep catalog regression on API capacity</p>
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
