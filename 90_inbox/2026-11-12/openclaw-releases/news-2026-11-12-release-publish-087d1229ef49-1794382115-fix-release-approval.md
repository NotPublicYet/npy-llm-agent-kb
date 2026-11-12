# news-2026-11-12-release-publish-087d1229ef49-1794382115-fix-release-approval

Automation: NewsIngest/v1
SourceID: openclaw-releases
SourceURL: https://github.com/openclaw/openclaw/releases/tag/release-publish%2F087d1229ef49-1794382115
IngestedAt: 2026-11-12
Status: Untriaged
Submitted date: 2026-11-12
Submitter: @news-bot
Proposed destination: 09_resources/news/
Sensitivity notes: Public source material only

Date Captured: 2026-11-12
Event Date: 2026-11-11
Publish Date: 2026-11-11
Source: OpenClaw Releases
URL: https://github.com/openclaw/openclaw/releases/tag/release-publish%2F087d1229ef49-1794382115
Type: News
Confidence: High
Validation Status: valid

## Summary
<ul>
<li>fix: validate release parents by workflow path</li>
</ul>
<p>Run names now include release labels and are not workflow identity. Require the canonical parent workflow path, preserve it in ClawHub bootstrap, and use it for stable closeout. Keep existing SHA, ref, attempt, repository, event, and live authority checks.</p>
<p>Reviewed independently; local product execution prohibited by task scope. Hosted exact-head CI supplies validation. The 24 net regression lines cover dynamic titles, wrong paths, and producer projection.</p>
<p>Co-authored-by: RomneyDa <a href="mailto:6581799+RomneyDa@users.noreply.github.com">6581799+RomneyDa@users.noreply.github.com</a></p>
<ul>
<li>fix: release approval rejects dynamic publisher run names</li>
</ul>
<p>OpenClaw-Publication: 79a96f6b-cbb4-445b-ad6a-85d16e3b64df</p>
<ul>
<li>test: align release identity fixtures with path authority</li>
</ul>
<p>Repair hosted CI findings: remove a shadowed path name and supply canonical workflow identity to the existing failed-parent closeout tests. No production behavior changes.</p>
<p>Co-authored-by: RomneyDa <a href="mailto:6581799+RomneyDa@users.noreply.github.com">6581799+RomneyDa@users.noreply.github.com</a></p>
<ul>
<li>Publish openclaw/beta-publisher-identity</li>
</ul>
<p>OpenClaw-Publication: e7e234b6-f03b-4425-bc6d-20c81ea4f485</p>
<hr>
<p>Co-authored-by: RomneyDa <a href="mailto:6581799+RomneyDa@users.noreply.github.com">6581799+RomneyDa@users.noreply.github.com</a></p>

## Why It Matters
Source signal: <ul>
<li>fix: validate release parents by workflow path</li>
</ul>
<p>Run names now include release labels and are not workflow identity. Require the canonical parent workflow path, preserve it in ClawHub bootstrap, and use it for stable closeout. Keep existing SHA, ref, attempt, repository, event, and live authority checks.</p>
<p>Reviewed independently; local product execution prohibited by task scope. Hosted exact-head CI supplies validation. The 24 net regression lines cover dynamic titles, wrong paths, and producer projection.</p>
<p>Co-authored-by: RomneyDa <a href="mailto:6581799+RomneyDa@users.noreply.github.com">6581799+RomneyDa@users.noreply.github.com</a></p>
<ul>
<li>fix: release approval rejects dynamic publisher run names</li>
</ul>
<p>OpenClaw-Publication: 79a96f6b-cbb4-445b-ad6a-85d16e3b64df</p>
<ul>
<li>test: align release identity fixtures with path authority</li>
</ul>
<p>Repair hosted CI findings: remove a shadowed path name and supply canonical workflow identity to the existing failed-parent closeout tests. No production behavior changes.</p>
<p>Co-authored-by: RomneyDa <a href="mailto:6581799+RomneyDa@users.noreply.github.com">6581799+RomneyDa@users.noreply.github.com</a></p>
<ul>
<li>Publish openclaw/beta-publisher-identity</li>
</ul>
<p>OpenClaw-Publication: e7e234b6-f03b-4425-bc6d-20c81ea4f485</p>
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
