# news-2026-11-24-release-publish-56c3a82e5658-1795499168-fix-release-echo-adm

Automation: NewsIngest/v1
SourceID: openclaw-releases
SourceURL: https://github.com/openclaw/openclaw/releases/tag/release-publish%2F56c3a82e5658-1795499168
IngestedAt: 2026-11-24
Status: Untriaged
Submitted date: 2026-11-24
Submitter: @news-bot
Proposed destination: 09_resources/news/
Sensitivity notes: Public source material only

Date Captured: 2026-11-24
Event Date: 2026-11-24
Publish Date: 2026-11-24
Source: OpenClaw Releases
URL: https://github.com/openclaw/openclaw/releases/tag/release-publish%2F56c3a82e5658-1795499168
Type: News
Confidence: High
Validation Status: valid

## Summary
<p>Source admission records publication_artifact_source_json as coverage, but<br>
the manifest writer omitted it, so validate-manifest rejected pinned reuse<br>
runs (FRV 45328729828: "publicationArtifactSourceJson differs from manifest").<br>
The writer now echoes the admitted pin; the recovery-only override is removed.</p>
<p>Co-authored-by: RomneyDa <a href="mailto:6581799+RomneyDa@users.noreply.github.com">6581799+RomneyDa@users.noreply.github.com</a><br>
Co-authored-by: vincentkoc <a href="mailto:25068+vincentkoc@users.noreply.github.com">25068+vincentkoc@users.noreply.github.com</a></p>

## Why It Matters
Source signal: <p>Source admission records publication_artifact_source_json as coverage, but<br>
the manifest writer omitted it, so validate-manifest rejected pinned reuse<br>
runs (FRV 45328729828: "publicationArtifactSourceJson differs from manifest").<br>
The writer now echoes the admitted pin; the recovery-only override is removed.</p>
<p>Co-authored-by: RomneyDa <a href="mailto:6581799+RomneyDa@users.noreply.github.com">6581799+RomneyDa@users.noreply.github.com</a><br>
Co-authored-by: vincentkoc <a href="mailto:25068+vincentkoc@users.noreply.github.com">25068+vincentkoc@users.noreply.github.com</a></p>
Implication: May require updating model/tool selection, baseline comparisons, and ongoing experiment assumptions.

## Evidence/Quotes (short)
- Source URL only. Add short excerpts during triage if needed.

## Relevance to NPY
TBD

## Suggested Action
- Triage into 09_resources/news/
- Add question: 01_questions/...
- Add experiment: 03_experiments/...
