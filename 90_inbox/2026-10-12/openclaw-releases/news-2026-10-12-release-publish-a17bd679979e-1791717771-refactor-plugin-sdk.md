# news-2026-10-12-release-publish-a17bd679979e-1791717771-refactor-plugin-sdk

Automation: NewsIngest/v1
SourceID: openclaw-releases
SourceURL: https://github.com/openclaw/openclaw/releases/tag/release-publish%2Fa17bd679979e-1791717771
IngestedAt: 2026-10-12
Status: Untriaged
Submitted date: 2026-10-12
Submitter: @news-bot
Proposed destination: 09_resources/news/
Sensitivity notes: Public source material only

Date Captured: 2026-10-12
Event Date: 2026-10-11
Publish Date: 2026-10-11
Source: OpenClaw Releases
URL: https://github.com/openclaw/openclaw/releases/tag/release-publish%2Fa17bd679979e-1791717771
Type: News
Confidence: High
Validation Status: valid

## Summary
<ul>
<li>
<p>refactor(plugin-sdk): share legacy persistence warning budgets</p>
</li>
<li>
<p>refactor(plugin-sdk): await native exec and placement preparation</p>
</li>
</ul>
<p>Move bundled node policy preparation, approval methods that expire rows, placement retirement, and restart clearing through their existing workers. Preserve released native signatures and callback ordering with shared deprecation warnings, and retain effect-time authority checks. Storage format and update behavior are unchanged.</p>
<ul>
<li>
<p>test: repair approval authority fixture and inventory native compatibility</p>
</li>
<li>
<p>test: reflect retained native placement calls in worker inventory</p>
</li>
<li>
<p>fix(plugins): keep deprecation identity on the invocation frame</p>
</li>
<li>
<p>style(gateway): avoid shadowing the placement helper</p>
</li>
<li>
<p>refactor(gateway): simplify bootstrap claim cleanup</p>
</li>
<li>
<p>perf(node): avoid unused writer admission for exec policy reads</p>
</li>
<li>
<p>refactor: separate exec preparation from placement migration</p>
</li>
<li>
<p>refactor(plugin-sdk): add worker-owned SQLite runtime replacements</p>
</li>
<li>
<p>fix: register approval compatibility in PR tooling</p>
</li>
<li>
<p>fix: carry stable updater compatibility inventory</p>
</li>
</ul>
<p>Reuse the inventory fix from <a class="issue-link js-issue-link" data-error-text="Failed to load title" data-id="5796342949" data-permission-text="Title is private" data-url="https://github.com/openclaw/openclaw/issues/168740" data-hovercard-type="pull_request" data-hovercard-url="/openclaw/openclaw/pull/168740/hovercard" href="https://github.com/openclaw/openclaw/pull/168740">#168740</a> for the published-driver update gate.</p>
<p>Co-authored-by: Dallin Romney <a href="mailto:dallinromney@gmail.com">dallinromney@gmail.com</a></p>
<ul>
<li>
<p>fix: register SQLite compatibility in PR tooling</p>
</li>
<li>
<p>fix: preserve SQLite preparation and compatibility exports</p>
</li>
<li>
<p>fix(pr): include shared SDK deprecation helper in wrapper</p>
</li>
<li>
<p>test(state): extract worker receipt wait fixture</p>
</li>
<li>
<p>test(state): isolate worker fixture wait helper from runtime loader</p>
</li>
<li>
<p>chore: refresh merged placement worker inventory</p>
</li>
</ul>
<hr>
<p>Co-authored-by: Dallin Romney <a href="mailto:dallinromney@gmail.com">dallinromney@gmail.com</a></p>

## Why It Matters
Source signal: <ul>
<li>
<p>refactor(plugin-sdk): share legacy persistence warning budgets</p>
</li>
<li>
<p>refactor(plugin-sdk): await native exec and placement preparation</p>
</li>
</ul>
<p>Move bundled node policy preparation, approval methods that expire rows, placement retirement, and restart clearing through their existing workers. Preserve released native signatures and callback ordering with shared deprecation warnings, and retain effect-time authority checks. Storage format and update behavior are unchanged.</p>
<ul>
<li>
<p>test: repair approval authority fixture and inventory native compatibility</p>
</li>
<li>
<p>test: reflect retained native placement calls in worker inventory</p>
</li>
<li>
<p>fix(plugins): keep deprecation identity on the invocation frame</p>
</li>
<li>
<p>style(gateway): avoid shadowing the placement helper</p>
</li>
<li>
<p>refactor(gateway): simplify bootstrap claim cleanup</p>
</li>
<li>
<p>perf(node): avoid unused writer admission for exec policy reads</p>
</li>
<li>
<p>refactor: separate exec preparation from placement migration</p>
</li>
<li>
<p>refactor(plugin-sdk): add worker-owned SQLite runtime replacements</p>
</li>
<li>
<p>fix: register approval compatibility in PR tooling</p>
</li>
<li>
<p>fix: carry stable updater compatibility inventory</p>
</li>
</ul>
<p>Reuse the inventory fix from <a class="issue-link js-issue-link" data-error-text="Failed to load title" data-id="5796342949" data-permission-text="Title is private" data-url="https://github.com/openclaw/openclaw/issues/168740" data-hovercard-type="pull_request" data-hovercard-url="/openclaw/openclaw/pull/168740/hovercard" href="https://github.com/openclaw/openclaw/pull/168740">#168740</a> for the published-driver update gate.</p>
<p>Co-authored-by: Dallin Romney <a href="mailto:dallinromney@gmail.com">dallinromney@gmail.com</a></p>
<ul>
<li>
<p>fix: register SQLite compatibility in PR tooling</p>
</li>
<li>
<p>fix: preserve SQLite preparation and compatibility exports</p>
</li>
<li>
<p>fix(pr): include shared SDK deprecation helper in wrapper</p>
</li>
<li>
<p>test(state): extract worker receipt wait fixture</p>
</li>
<li>
<p>test(state): isolate worker fixture wait helper from runtime loader</p>
</li>
<li>
<p>chore: refresh merged placement worker inventory</p>
</li>
</ul>
<hr>
<p>Co-authored-by: Dallin Romney <a href="mailto:dallinromney@gmail.com">dallinromney@gmail.com</a></p>
Implication: May require updating model/tool selection, baseline comparisons, and ongoing experiment assumptions.

## Evidence/Quotes (short)
- Source URL only. Add short excerpts during triage if needed.

## Relevance to NPY
TBD

## Suggested Action
- Triage into 09_resources/news/
- Add question: 01_questions/...
- Add experiment: 03_experiments/...
