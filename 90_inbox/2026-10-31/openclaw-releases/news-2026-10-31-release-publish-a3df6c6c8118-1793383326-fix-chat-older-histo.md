# news-2026-10-31-release-publish-a3df6c6c8118-1793383326-fix-chat-older-histo

Automation: NewsIngest/v1
SourceID: openclaw-releases
SourceURL: https://github.com/openclaw/openclaw/releases/tag/release-publish%2Fa3df6c6c8118-1793383326
IngestedAt: 2026-10-31
Status: Untriaged
Submitted date: 2026-10-31
Submitter: @news-bot
Proposed destination: 09_resources/news/
Sensitivity notes: Public source material only

Date Captured: 2026-10-31
Event Date: 2026-10-30
Publish Date: 2026-10-30
Source: OpenClaw Releases
URL: https://github.com/openclaw/openclaw/releases/tag/release-publish%2Fa3df6c6c8118-1793383326
Type: News
Confidence: High
Validation Status: valid

## Summary
<p>Keep older legacy chat history reachable from initial and explicit numeric pages when native message IDs are unavailable. Use the page’s existing numeric-pagination metadata and reader-owned hasOlder result, preserving hidden-prefix exhaustion, native cursor/source fences, and byte budgets.</p>
<p>Preserve the centered-page cursor metadata contract. Add real legacy CLI-import regressions for limits one and two, with lossless numeric traversal, and retain default/explicit hidden-prefix and byte-limited cursor coverage.</p>
<p>Verification: original Gateway assertions reproduced on the unmodified base; new legacy initial cases fail on the previous implementation. The coherent repair passes 106 actual Bun cases, core production and 29 dependent test type graphs, changed lint/format/ratchets, and fresh independent review. Current-head CI and protected landing are recorded separately in the native receipt.</p>
<p>Work session: <a href="https://team.openclaw.ai/chat/roboclaw/~key/dashboard/f2d13397-ed54-4d44-ade1-12b2edc3d0e3" rel="nofollow">https://team.openclaw.ai/chat/roboclaw/~key/dashboard/f2d13397-ed54-4d44-ade1-12b2edc3d0e3</a></p>
<p>Co-authored-by: vincentkoc <a href="mailto:25068+vincentkoc@users.noreply.github.com">25068+vincentkoc@users.noreply.github.com</a></p>

## Why It Matters
Source signal: <p>Keep older legacy chat history reachable from initial and explicit numeric pages when native message IDs are unavailable. Use the page’s existing numeric-pagination metadata and reader-owned hasOlder result, preserving hidden-prefix exhaustion, native cursor/source fences, and byte budgets.</p>
<p>Preserve the centered-page cursor metadata contract. Add real legacy CLI-import regressions for limits one and two, with lossless numeric traversal, and retain default/explicit hidden-prefix and byte-limited cursor coverage.</p>
<p>Verification: original Gateway assertions reproduced on the unmodified base; new legacy initial cases fail on the previous implementation. The coherent repair passes 106 actual Bun cases, core production and 29 dependent test type graphs, changed lint/format/ratchets, and fresh independent review. Current-head CI and protected landing are recorded separately in the native receipt.</p>
<p>Work session: <a href="https://team.openclaw.ai/chat/roboclaw/~key/dashboard/f2d13397-ed54-4d44-ade1-12b2edc3d0e3" rel="nofollow">https://team.openclaw.ai/chat/roboclaw/~key/dashboard/f2d13397-ed54-4d44-ade1-12b2edc3d0e3</a></p>
<p>Co-authored-by: vincentkoc <a href="mailto:25068+vincentkoc@users.noreply.github.com">25068+vincentkoc@users.noreply.github.com</a></p>
Implication: May require updating model/tool selection, baseline comparisons, and ongoing experiment assumptions.

## Evidence/Quotes (short)
- Source URL only. Add short excerpts during triage if needed.

## Relevance to NPY
TBD

## Suggested Action
- Triage into 09_resources/news/
- Add question: 01_questions/...
- Add experiment: 03_experiments/...
