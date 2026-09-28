# news-2026-09-28-release-publish-593401e94869-1790518861-fix-ci-expose-bounde

Automation: NewsIngest/v1
SourceID: openclaw-releases
SourceURL: https://github.com/openclaw/openclaw/releases/tag/release-publish%2F593401e94869-1790518861
IngestedAt: 2026-09-28
Status: Untriaged
Submitted date: 2026-09-28
Submitter: @news-bot
Proposed destination: 09_resources/news/
Sensitivity notes: Public source material only

Date Captured: 2026-09-28
Event Date: 2026-09-27
Publish Date: 2026-09-27
Source: OpenClaw Releases
URL: https://github.com/openclaw/openclaw/releases/tag/release-publish%2F593401e94869-1790518861
Type: News
Confidence: High
Validation Status: valid

## Summary
<ul>
<li>fix(ci): expose bounded Docker survivor failure metadata</li>
</ul>
<p>Keep diagnostic artifacts and outcomes unchanged. Publish only redacted phase, exit and signal coordinates plus scheduler status and timeout flags as check annotations. Hosted review and CI remain pending; local dependency admission was unavailable.</p>
<p>Co-authored-by: RomneyDa <a href="mailto:6581799+RomneyDa@users.noreply.github.com">6581799+RomneyDa@users.noreply.github.com</a></p>
<ul>
<li>fix(ci): retain survivor metadata beyond clipped failure tails</li>
</ul>
<p>Use a bounded host metadata pipe within the existing scheduler process owner. Validate the three fields and emit only after process-group and log cleanup. Preserve artifact bytes and all lane outcomes. Fix the publisher consistent-return lint defect.</p>
<p>Co-authored-by: RomneyDa <a href="mailto:6581799+RomneyDa@users.noreply.github.com">6581799+RomneyDa@users.noreply.github.com</a></p>
<ul>
<li>fix(ci): use typed Docker timeout flags directly</li>
</ul>
<p>Remove two unnecessary boolean comparisons without changing annotation output or failure handling.</p>
<p>Co-authored-by: RomneyDa <a href="mailto:6581799+RomneyDa@users.noreply.github.com">6581799+RomneyDa@users.noreply.github.com</a></p>
<hr>
<p>Co-authored-by: RomneyDa <a href="mailto:6581799+RomneyDa@users.noreply.github.com">6581799+RomneyDa@users.noreply.github.com</a></p>

## Why It Matters
Source signal: <ul>
<li>fix(ci): expose bounded Docker survivor failure metadata</li>
</ul>
<p>Keep diagnostic artifacts and outcomes unchanged. Publish only redacted phase, exit and signal coordinates plus scheduler status and timeout flags as check annotations. Hosted review and CI remain pending; local dependency admission was unavailable.</p>
<p>Co-authored-by: RomneyDa <a href="mailto:6581799+RomneyDa@users.noreply.github.com">6581799+RomneyDa@users.noreply.github.com</a></p>
<ul>
<li>fix(ci): retain survivor metadata beyond clipped failure tails</li>
</ul>
<p>Use a bounded host metadata pipe within the existing scheduler process owner. Validate the three fields and emit only after process-group and log cleanup. Preserve artifact bytes and all lane outcomes. Fix the publisher consistent-return lint defect.</p>
<p>Co-authored-by: RomneyDa <a href="mailto:6581799+RomneyDa@users.noreply.github.com">6581799+RomneyDa@users.noreply.github.com</a></p>
<ul>
<li>fix(ci): use typed Docker timeout flags directly</li>
</ul>
<p>Remove two unnecessary boolean comparisons without changing annotation output or failure handling.</p>
<p>Co-authored-by: RomneyDa <a href="mailto:6581799+RomneyDa@users.noreply.github.com">6581799+RomneyDa@users.noreply.github.com</a></p>
<hr>
<p>Co-authored-by: RomneyDa <a href="mailto:6581799+RomneyDa@users.noreply.github.com">6581799+RomneyDa@users.noreply.github.com</a></p>
Implication: May require updating model/tool selection, baseline comparisons, and ongoing experiment assumptions.

## Evidence/Quotes (short)
- Source URL only. Add short excerpts during triage if needed.

## Relevance to NPY
TBD

## Suggested Action
- Triage into 09_resources/news/
- Add question: 01_questions/...
- Add experiment: 03_experiments/...
