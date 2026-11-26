# news-2026-11-26-release-publish-14db7f3bf34a-1795601940-improve-name-browser

Automation: NewsIngest/v1
SourceID: openclaw-releases
SourceURL: https://github.com/openclaw/openclaw/releases/tag/release-publish%2F14db7f3bf34a-1795601940
IngestedAt: 2026-11-26
Status: Untriaged
Submitted date: 2026-11-26
Submitter: @news-bot
Proposed destination: 09_resources/news/
Sensitivity notes: Public source material only

Date Captured: 2026-11-26
Event Date: 2026-11-25
Publish Date: 2026-11-25
Source: OpenClaw Releases
URL: https://github.com/openclaw/openclaw/releases/tag/release-publish%2F14db7f3bf34a-1795601940
Type: News
Confidence: High
Validation Status: valid

## Summary
<ul>
<li>
<p>improve: show readable agent and chat tool activity</p>
</li>
<li>
<p>perf: load operation labels with expanded chat tool rows</p>
</li>
<li>
<p>improve: show what file and shell tools did in chat</p>
</li>
<li>
<p>improve: name browser and device actions in chat</p>
</li>
<li>
<p>fix: resolve chat tool labels without a type assertion</p>
</li>
<li>
<p>fix: resolve browser actions against the selected tool labels</p>
</li>
<li>
<p>fix: keep the search query in chat activity labels</p>
</li>
<li>
<p>fix: localize web search queries in chat activity</p>
</li>
<li>
<p>fix(control-ui): keep incomplete tool outcomes visible in chat</p>
</li>
</ul>
<p>Put the outcome outside the ellipsized tool title and show it once in each row mode. Keep human device selectors in describe labels; browser tab references remain in the expanded input.</p>
<ul>
<li>fix(control-ui): keep run interruption visible in open tool rows</li>
</ul>
<p>Keep the owning run interruption on the focused disclosure while its open body reports that the tool result was not recorded. Verify direct, dispatched and inline search button names without introducing another ARIA label.</p>
<ul>
<li>
<p>fix: keep the single chat tool icon table from main</p>
</li>
<li>
<p>fix: keep main receipt and blocked-image status in the shared operation row</p>
</li>
</ul>

## Why It Matters
Source signal: <ul>
<li>
<p>improve: show readable agent and chat tool activity</p>
</li>
<li>
<p>perf: load operation labels with expanded chat tool rows</p>
</li>
<li>
<p>improve: show what file and shell tools did in chat</p>
</li>
<li>
<p>improve: name browser and device actions in chat</p>
</li>
<li>
<p>fix: resolve chat tool labels without a type assertion</p>
</li>
<li>
<p>fix: resolve browser actions against the selected tool labels</p>
</li>
<li>
<p>fix: keep the search query in chat activity labels</p>
</li>
<li>
<p>fix: localize web search queries in chat activity</p>
</li>
<li>
<p>fix(control-ui): keep incomplete tool outcomes visible in chat</p>
</li>
</ul>
<p>Put the outcome outside the ellipsized tool title and show it once in each row mode. Keep human device selectors in describe labels; browser tab references remain in the expanded input.</p>
<ul>
<li>fix(control-ui): keep run interruption visible in open tool rows</li>
</ul>
<p>Keep the owning run interruption on the focused disclosure while its open body reports that the tool result was not recorded. Verify direct, dispatched and inline search button names without introducing another ARIA label.</p>
<ul>
<li>
<p>fix: keep the single chat tool icon table from main</p>
</li>
<li>
<p>fix: keep main receipt and blocked-image status in the shared operation row</p>
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
