# news-2026-11-11-release-publish-358722b1a46c-1794333870-fix-release-explain

Automation: NewsIngest/v1
SourceID: openclaw-releases
SourceURL: https://github.com/openclaw/openclaw/releases/tag/release-publish%2F358722b1a46c-1794333870
IngestedAt: 2026-11-11
Status: Untriaged
Submitted date: 2026-11-11
Submitter: @news-bot
Proposed destination: 09_resources/news/
Sensitivity notes: Public source material only

Date Captured: 2026-11-11
Event Date: 2026-11-10
Publish Date: 2026-11-10
Source: OpenClaw Releases
URL: https://github.com/openclaw/openclaw/releases/tag/release-publish%2F358722b1a46c-1794333870
Type: News
Confidence: High
Validation Status: valid

## Summary
<ul>
<li>fix(release): classify child evidence read failures</li>
</ul>
<p>Preserve the original gh transport and complete historical evidence checks while reporting allowlisted failure reasons from the original response. Do not infer rate limiting from HTTP 403 alone.</p>
<p>Co-authored-by: RomneyDa <a href="mailto:6581799+RomneyDa@users.noreply.github.com">6581799+RomneyDa@users.noreply.github.com</a></p>
<ul>
<li>fix(release): explain rejected child evidence reads</li>
</ul>
<p>OpenClaw-Publication: 76f4b6e2-7537-4994-98b6-ab5bbe7cbfaa</p>
<ul>
<li>test(release): use Node for child evidence fixtures</li>
</ul>
<p>Keep extensionless fake gh commands on the canonical Node runtime with explicit CommonJS scope when the test runner is Bun. Preserve exact failure and request assertions; format the test with the pinned formatter.</p>
<p>Co-authored-by: RomneyDa <a href="mailto:6581799+RomneyDa@users.noreply.github.com">6581799+RomneyDa@users.noreply.github.com</a></p>
<ul>
<li>Publish openclaw/child-evidence-diagnostic-pr</li>
</ul>
<p>OpenClaw-Publication: e2def52a-2270-41be-9294-ddfc6f34db08</p>
<ul>
<li>Publish openclaw/child-evidence-diagnostic-pr</li>
</ul>
<p>OpenClaw-Publication: e88c5d4e-109f-49ee-ade2-053c0be33b5d</p>
<hr>
<p>Co-authored-by: RomneyDa <a href="mailto:6581799+RomneyDa@users.noreply.github.com">6581799+RomneyDa@users.noreply.github.com</a></p>

## Why It Matters
Source signal: <ul>
<li>fix(release): classify child evidence read failures</li>
</ul>
<p>Preserve the original gh transport and complete historical evidence checks while reporting allowlisted failure reasons from the original response. Do not infer rate limiting from HTTP 403 alone.</p>
<p>Co-authored-by: RomneyDa <a href="mailto:6581799+RomneyDa@users.noreply.github.com">6581799+RomneyDa@users.noreply.github.com</a></p>
<ul>
<li>fix(release): explain rejected child evidence reads</li>
</ul>
<p>OpenClaw-Publication: 76f4b6e2-7537-4994-98b6-ab5bbe7cbfaa</p>
<ul>
<li>test(release): use Node for child evidence fixtures</li>
</ul>
<p>Keep extensionless fake gh commands on the canonical Node runtime with explicit CommonJS scope when the test runner is Bun. Preserve exact failure and request assertions; format the test with the pinned formatter.</p>
<p>Co-authored-by: RomneyDa <a href="mailto:6581799+RomneyDa@users.noreply.github.com">6581799+RomneyDa@users.noreply.github.com</a></p>
<ul>
<li>Publish openclaw/child-evidence-diagnostic-pr</li>
</ul>
<p>OpenClaw-Publication: e2def52a-2270-41be-9294-ddfc6f34db08</p>
<ul>
<li>Publish openclaw/child-evidence-diagnostic-pr</li>
</ul>
<p>OpenClaw-Publication: e88c5d4e-109f-49ee-ade2-053c0be33b5d</p>
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
