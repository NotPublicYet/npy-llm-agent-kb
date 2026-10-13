# news-2026-10-13-release-publish-ff338bdb01f2-1791867901-fix-preserve-cron-tu

Automation: NewsIngest/v1
SourceID: openclaw-releases
SourceURL: https://github.com/openclaw/openclaw/releases/tag/release-publish%2Fff338bdb01f2-1791867901
IngestedAt: 2026-10-13
Status: Untriaged
Submitted date: 2026-10-13
Submitter: @news-bot
Proposed destination: 09_resources/news/
Sensitivity notes: Public source material only

Date Captured: 2026-10-13
Event Date: 2026-10-13
Publish Date: 2026-10-13
Source: OpenClaw Releases
URL: https://github.com/openclaw/openclaw/releases/tag/release-publish%2Fff338bdb01f2-1791867901
Type: News
Confidence: High
Validation Status: valid

## Summary
<p>Preserve the shared fallback owner's model-routing provenance in cron candidate parameters. Dispatched fallbacks continue the original user turn with the existing recorder, user key, and session/run identity; undispatched fallbacks retain fresh-prompt classification. Transcript integrity assertions are unchanged.</p>
<p>The two dispatch-state regressions pass in exact-head CI run 38346632523. The coordinator's reviewed scope and two clean autoreviews are retained; ClawSweeper reported no code findings. Its proof-only hold is covered by the maintainer's explicit CI-proof override.</p>
<p>Related: <a class="issue-link js-issue-link" data-error-text="Failed to load title" data-id="5791688964" data-permission-text="Title is private" data-url="https://github.com/openclaw/openclaw/issues/168456" data-hovercard-type="issue" data-hovercard-url="/openclaw/openclaw/issues/168456/hovercard" href="https://github.com/openclaw/openclaw/issues/168456">#168456</a><br>
The exact reported transcript assertion sequence remains unverified; this change does not close that issue.</p>
<p>Co-authored-by: synthalorian <a href="mailto:synthalorian@gmail.com">synthalorian@gmail.com</a><br>
Co-authored-by: Peter Steinberger <a href="mailto:steipete@gmail.com">steipete@gmail.com</a></p>

## Why It Matters
Source signal: <p>Preserve the shared fallback owner's model-routing provenance in cron candidate parameters. Dispatched fallbacks continue the original user turn with the existing recorder, user key, and session/run identity; undispatched fallbacks retain fresh-prompt classification. Transcript integrity assertions are unchanged.</p>
<p>The two dispatch-state regressions pass in exact-head CI run 38346632523. The coordinator's reviewed scope and two clean autoreviews are retained; ClawSweeper reported no code findings. Its proof-only hold is covered by the maintainer's explicit CI-proof override.</p>
<p>Related: <a class="issue-link js-issue-link" data-error-text="Failed to load title" data-id="5791688964" data-permission-text="Title is private" data-url="https://github.com/openclaw/openclaw/issues/168456" data-hovercard-type="issue" data-hovercard-url="/openclaw/openclaw/issues/168456/hovercard" href="https://github.com/openclaw/openclaw/issues/168456">#168456</a><br>
The exact reported transcript assertion sequence remains unverified; this change does not close that issue.</p>
<p>Co-authored-by: synthalorian <a href="mailto:synthalorian@gmail.com">synthalorian@gmail.com</a><br>
Co-authored-by: Peter Steinberger <a href="mailto:steipete@gmail.com">steipete@gmail.com</a></p>
Implication: May require updating model/tool selection, baseline comparisons, and ongoing experiment assumptions.

## Evidence/Quotes (short)
- Source URL only. Add short excerpts during triage if needed.

## Relevance to NPY
TBD

## Suggested Action
- Triage into 09_resources/news/
- Add question: 01_questions/...
- Add experiment: 03_experiments/...
