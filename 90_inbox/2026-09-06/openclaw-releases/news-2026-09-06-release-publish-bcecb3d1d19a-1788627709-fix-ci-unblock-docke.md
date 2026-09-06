# news-2026-09-06-release-publish-bcecb3d1d19a-1788627709-fix-ci-unblock-docke

Automation: NewsIngest/v1
SourceID: openclaw-releases
SourceURL: https://github.com/openclaw/openclaw/releases/tag/release-publish%2Fbcecb3d1d19a-1788627709
IngestedAt: 2026-09-06
Status: Untriaged
Submitted date: 2026-09-06
Submitter: @news-bot
Proposed destination: 09_resources/news/
Sensitivity notes: Public source material only

Date Captured: 2026-09-06
Event Date: 2026-09-05
Publish Date: 2026-09-05
Source: OpenClaw Releases
URL: https://github.com/openclaw/openclaw/releases/tag/release-publish%2Fbcecb3d1d19a-1788627709
Type: News
Confidence: High
Validation Status: valid

## Summary
<p>Resolve the Claude Agent SDK through the ACPX-owned adapter so Docker setup<br>
retains the SDK-declared CLI version without requiring a root dependency.<br>
Exercise matching, missing and stale CLI installs through the real Bash setup.</p>
<p>Move the packaged MCP smoke to runtime lease acquisition and dispose its<br>
materialized tools before global teardown. Preserve MCP App and tool-policy<br>
assertions and remove the obsolete install-command source assertion.</p>
<p>Validated with 24 bootstrap and sibling tests, the complete changed-file gate,<br>
independent review, and successful exact-head CI. Full authenticated provider<br>
qualification remains part of release validation.</p>
<p>Co-authored-by: Vincent Koc <a href="mailto:vincentkoc@ieee.org">vincentkoc@ieee.org</a></p>

## Why It Matters
Source signal: <p>Resolve the Claude Agent SDK through the ACPX-owned adapter so Docker setup<br>
retains the SDK-declared CLI version without requiring a root dependency.<br>
Exercise matching, missing and stale CLI installs through the real Bash setup.</p>
<p>Move the packaged MCP smoke to runtime lease acquisition and dispose its<br>
materialized tools before global teardown. Preserve MCP App and tool-policy<br>
assertions and remove the obsolete install-command source assertion.</p>
<p>Validated with 24 bootstrap and sibling tests, the complete changed-file gate,<br>
independent review, and successful exact-head CI. Full authenticated provider<br>
qualification remains part of release validation.</p>
<p>Co-authored-by: Vincent Koc <a href="mailto:vincentkoc@ieee.org">vincentkoc@ieee.org</a></p>
Implication: May require updating model/tool selection, baseline comparisons, and ongoing experiment assumptions.

## Evidence/Quotes (short)
- Source URL only. Add short excerpts during triage if needed.

## Relevance to NPY
TBD

## Suggested Action
- Triage into 09_resources/news/
- Add question: 01_questions/...
- Add experiment: 03_experiments/...
