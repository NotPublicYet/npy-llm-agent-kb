# news-2026-10-11-release-publish-9cf7fc279c26-1791664994-fix-ui-restore-start

Automation: NewsIngest/v1
SourceID: openclaw-releases
SourceURL: https://github.com/openclaw/openclaw/releases/tag/release-publish%2F9cf7fc279c26-1791664994
IngestedAt: 2026-10-11
Status: Untriaged
Submitted date: 2026-10-11
Submitter: @news-bot
Proposed destination: 09_resources/news/
Sensitivity notes: Public source material only

Date Captured: 2026-10-11
Event Date: 2026-10-10
Publish Date: 2026-10-10
Source: OpenClaw Releases
URL: https://github.com/openclaw/openclaw/releases/tag/release-publish%2F9cf7fc279c26-1791664994
Type: News
Confidence: High
Validation Status: valid

## Summary
<h2>What Problem This Solves</h2>
<p>Fixes the saved cloud-startup toast recovery E2E failure after a private-draft discard reload, which blocks otherwise unrelated UI pull requests.</p>
<h2>User Impact</h2>
<p>No user-visible change. The test continues to check that recovery preserves the separate private draft, replays the saved first turn exactly once, and retains the later draft and queued message.</p>
<h2>Why This Change Was Made</h2>
<p>Introduced by <a class="commit-link" data-hovercard-type="commit" data-hovercard-url="https://github.com/openclaw/openclaw/commit/4606ea59b7d41e3880f7a32c0d1a429c6e4382f5/hovercard" href="https://github.com/openclaw/openclaw/commit/4606ea59b7d41e3880f7a32c0d1a429c6e4382f5"><tt>4606ea5</tt></a> (<a class="issue-link js-issue-link" data-error-text="Failed to load title" data-id="5792836805" data-permission-text="Title is private" data-url="https://github.com/openclaw/openclaw/issues/168506" data-hovercard-type="pull_request" data-hovercard-url="/openclaw/openclaw/pull/168506/hovercard" href="https://github.com/openclaw/openclaw/pull/168506">#168506</a>), which intentionally made the automation readiness observer lazy. After the dialog-triggered reload, observing <code>sessions.send</code> proves the Gateway replay started, not that the renderer readiness hook has loaded. The next synchronous navigation helper read starts that lazy import but receives <code>undefined</code> and throws <code>Control UI readiness hook is unavailable</code>.</p>
<p>Await the existing initial-roster/readiness helper before navigating in the toast branch. This preserves lazy production loading and all existing assertions and timeouts; it adds no alternate recovery or navigation path.</p>
<p>No overlap with Pash/Sarah changes.</p>
<h2>Evidence</h2>
<ul>
<li>
<p>The unchanged test fails on main with two passing cases and the toast case reporting <code>Control UI readiness hook is unavailable</code>. The same failure is visible in <a href="https://github.com/openclaw/openclaw/actions/runs/38082252267/job/114301616653">the inherited UI shard</a>, and <a href="https://github.com/openclaw/openclaw/actions/runs/38081206041/job/114298515684">another PR's UI shard</a>. Existing main reproduction evidence was reused rather than rerun.</p>
</li>
<li>
<p>Candidate production-bundle Chromium run: <strong>3/3 passed</strong>, including toast recovery (31.949 s). Command: <code>node scripts/run-vitest.mjs run --config test/vitest/vitest.ui-e2e.config.ts ui/src/e2e/new-session-page.cloud-startup.runtime-load.e2e.test.ts --maxWorkers=1</code>. Full duration: 155.67 s.</p>
</li>
<li>
<p>Targeted <code>oxfmt --check</code> passed. The first local attempt could not build because the copied installation lacked <code>@solidjs/vite-plugin</code>; a frozen dependency install restored the worktree and the full scenario then passed.<br>
Merge danger: two-way door; reverting restores only the test synchronization defect. Blast radius is this production-bundle recovery E2E scenario; no product code, persisted state, or public contract changes.</p>
</li>
</ul>
<p>Co-authored-by: Ayaan Zaidi <a href="mailto:hi@obviy.us">hi@obviy.us</a></p>

## Why It Matters
Source signal: <h2>What Problem This Solves</h2>
<p>Fixes the saved cloud-startup toast recovery E2E failure after a private-draft discard reload, which blocks otherwise unrelated UI pull requests.</p>
<h2>User Impact</h2>
<p>No user-visible change. The test continues to check that recovery preserves the separate private draft, replays the saved first turn exactly once, and retains the later draft and queued message.</p>
<h2>Why This Change Was Made</h2>
<p>Introduced by <a class="commit-link" data-hovercard-type="commit" data-hovercard-url="https://github.com/openclaw/openclaw/commit/4606ea59b7d41e3880f7a32c0d1a429c6e4382f5/hovercard" href="https://github.com/openclaw/openclaw/commit/4606ea59b7d41e3880f7a32c0d1a429c6e4382f5"><tt>4606ea5</tt></a> (<a class="issue-link js-issue-link" data-error-text="Failed to load title" data-id="5792836805" data-permission-text="Title is private" data-url="https://github.com/openclaw/openclaw/issues/168506" data-hovercard-type="pull_request" data-hovercard-url="/openclaw/openclaw/pull/168506/hovercard" href="https://github.com/openclaw/openclaw/pull/168506">#168506</a>), which intentionally made the automation readiness observer lazy. After the dialog-triggered reload, observing <code>sessions.send</code> proves the Gateway replay started, not that the renderer readiness hook has loaded. The next synchronous navigation helper read starts that lazy import but receives <code>undefined</code> and throws <code>Control UI readiness hook is unavailable</code>.</p>
<p>Await the existing initial-roster/readiness helper before navigating in the toast branch. This preserves lazy production loading and all existing assertions and timeouts; it adds no alternate recovery or navigation path.</p>
<p>No overlap with Pash/Sarah changes.</p>
<h2>Evidence</h2>
<ul>
<li>
<p>The unchanged test fails on main with two passing cases and the toast case reporting <code>Control UI readiness hook is unavailable</code>. The same failure is visible in <a href="https://github.com/openclaw/openclaw/actions/runs/38082252267/job/114301616653">the inherited UI shard</a>, and <a href="https://github.com/openclaw/openclaw/actions/runs/38081206041/job/114298515684">another PR's UI shard</a>. Existing main reproduction evidence was reused rather than rerun.</p>
</li>
<li>
<p>Candidate production-bundle Chromium run: <strong>3/3 passed</strong>, including toast recovery (31.949 s). Command: <code>node scripts/run-vitest.mjs run --config test/vitest/vitest.ui-e2e.config.ts ui/src/e2e/new-session-page.cloud-startup.runtime-load.e2e.test.ts --maxWorkers=1</code>. Full duration: 155.67 s.</p>
</li>
<li>
<p>Targeted <code>oxfmt --check</code> passed. The first local attempt could not build because the copied installation lacked <code>@solidjs/vite-plugin</code>; a frozen dependency install restored the worktree and the full scenario then passed.<br>
Merge danger: two-way door; reverting restores only the test synchronization defect. Blast radius is this production-bundle recovery E2E scenario; no product code, persisted state, or public contract changes.</p>
</li>
</ul>
<p>Co-authored-by: Ayaan Zaidi <a href="mailto:hi@obviy.us">hi@obviy.us</a></p>
Implication: May require updating model/tool selection, baseline comparisons, and ongoing experiment assumptions.

## Evidence/Quotes (short)
- Source URL only. Add short excerpts during triage if needed.

## Relevance to NPY
TBD

## Suggested Action
- Triage into 09_resources/news/
- Add question: 01_questions/...
- Add experiment: 03_experiments/...
