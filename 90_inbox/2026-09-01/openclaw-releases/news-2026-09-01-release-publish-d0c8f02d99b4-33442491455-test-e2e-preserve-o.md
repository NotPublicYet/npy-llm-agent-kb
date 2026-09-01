# news-2026-09-01-release-publish-d0c8f02d99b4-33442491455-test-e2e-preserve-o

Automation: NewsIngest/v1
SourceID: openclaw-releases
SourceURL: https://github.com/openclaw/openclaw/releases/tag/release-publish%2Fd0c8f02d99b4-33442491455
IngestedAt: 2026-09-01
Status: Untriaged
Submitted date: 2026-09-01
Submitter: @news-bot
Proposed destination: 09_resources/news/
Sensitivity notes: Public source material only

Date Captured: 2026-09-01
Event Date: 2026-08-31
Publish Date: 2026-08-31
Source: OpenClaw Releases
URL: https://github.com/openclaw/openclaw/releases/tag/release-publish%2Fd0c8f02d99b4-33442491455
Type: News
Confidence: High
Validation Status: valid

## Summary
<ul>
<li>
<p>fix: align release fixtures with migration and baseline contracts</p>
</li>
<li>
<p>fix: bootstrap survivor services before seeding legacy state</p>
</li>
<li>
<p>fix: keep survivor bootstrap state owned by the baseline</p>
</li>
</ul>
<p>Use the managed service token rather than synthetic legacy device files,<br>
and keep fixture reload disabled until the updater owns restart.</p>
<ul>
<li>
<p>fix: report survivor service load state through its unit owner</p>
</li>
<li>
<p>test(e2e): include service manager in diagnostics fixture</p>
</li>
</ul>
<p>Keep the isolated systemctl observation fixture complete and use its own<br>
HOME with a parseable unit while retaining child-exit and redaction checks.</p>
<ul>
<li>test(e2e): keep survivor migration setup offline</li>
</ul>
<p>Stop the authenticated baseline through its service owner before seeding<br>
legacy migration specimens. Start the repaired installed unit and verify<br>
strict readiness and authenticated RPC before the candidate updater captures<br>
the live service that its restart must replace.</p>

## Why It Matters
Source signal: <ul>
<li>
<p>fix: align release fixtures with migration and baseline contracts</p>
</li>
<li>
<p>fix: bootstrap survivor services before seeding legacy state</p>
</li>
<li>
<p>fix: keep survivor bootstrap state owned by the baseline</p>
</li>
</ul>
<p>Use the managed service token rather than synthetic legacy device files,<br>
and keep fixture reload disabled until the updater owns restart.</p>
<ul>
<li>
<p>fix: report survivor service load state through its unit owner</p>
</li>
<li>
<p>test(e2e): include service manager in diagnostics fixture</p>
</li>
</ul>
<p>Keep the isolated systemctl observation fixture complete and use its own<br>
HOME with a parseable unit while retaining child-exit and redaction checks.</p>
<ul>
<li>test(e2e): keep survivor migration setup offline</li>
</ul>
<p>Stop the authenticated baseline through its service owner before seeding<br>
legacy migration specimens. Start the repaired installed unit and verify<br>
strict readiness and authenticated RPC before the candidate updater captures<br>
the live service that its restart must replace.</p>
Implication: May require updating model/tool selection, baseline comparisons, and ongoing experiment assumptions.

## Evidence/Quotes (short)
- Source URL only. Add short excerpts during triage if needed.

## Relevance to NPY
TBD

## Suggested Action
- Triage into 09_resources/news/
- Add question: 01_questions/...
- Add experiment: 03_experiments/...
