# news-2026-09-19-release-publish-dd134705756b-1789735214-fix-release-run-the

Automation: NewsIngest/v1
SourceID: openclaw-releases
SourceURL: https://github.com/openclaw/openclaw/releases/tag/release-publish%2Fdd134705756b-1789735214
IngestedAt: 2026-09-19
Status: Untriaged
Submitted date: 2026-09-19
Submitter: @news-bot
Proposed destination: 09_resources/news/
Sensitivity notes: Public source material only

Date Captured: 2026-09-19
Event Date: 2026-09-18
Publish Date: 2026-09-18
Source: OpenClaw Releases
URL: https://github.com/openclaw/openclaw/releases/tag/release-publish%2Fdd134705756b-1789735214
Type: News
Confidence: High
Validation Status: valid

## Summary
<p>Blacksmith 32vcpu runners dropped the release npm producer's source check<br>
about 20 minutes into pnpm check on three consecutive 2026.9.5 validation<br>
parents (35311767636, 35314214628, 35321236449), each time with the step<br>
still in progress and no job log uploaded. The preflight workflow already<br>
supports hosted runners; select them for the release artifact producer so<br>
npm qualification stops depending on that runner class.</p>

## Why It Matters
Source signal: <p>Blacksmith 32vcpu runners dropped the release npm producer's source check<br>
about 20 minutes into pnpm check on three consecutive 2026.9.5 validation<br>
parents (35311767636, 35314214628, 35321236449), each time with the step<br>
still in progress and no job log uploaded. The preflight workflow already<br>
supports hosted runners; select them for the release artifact producer so<br>
npm qualification stops depending on that runner class.</p>
Implication: May require updating model/tool selection, baseline comparisons, and ongoing experiment assumptions.

## Evidence/Quotes (short)
- Source URL only. Add short excerpts during triage if needed.

## Relevance to NPY
TBD

## Suggested Action
- Triage into 09_resources/news/
- Add question: 01_questions/...
- Add experiment: 03_experiments/...
