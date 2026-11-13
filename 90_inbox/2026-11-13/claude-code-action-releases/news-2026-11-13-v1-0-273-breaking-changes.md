# news-2026-11-13-v1-0-273-breaking-changes

Automation: NewsIngest/v1
SourceID: claude-code-action-releases
SourceURL: https://github.com/anthropics/claude-code-action/releases/tag/v1.0.273
IngestedAt: 2026-11-13
Status: Untriaged
Submitted date: 2026-11-13
Submitter: @news-bot
Proposed destination: 09_resources/news/
Sensitivity notes: Public source material only

Date Captured: 2026-11-13
Event Date: 2026-11-12
Publish Date: 2026-11-12
Source: Claude Code Action Releases
URL: https://github.com/anthropics/claude-code-action/releases/tag/v1.0.273
Type: News
Confidence: Medium
Validation Status: valid

## Summary
<h2>What's Changed</h2>
<h3><g-emoji class="g-emoji" alias="warning">⚠️</g-emoji> Breaking changes</h3>
<ul>
<li>Deny code-running commands on PRs from authors without write access by <a class="user-mention notranslate" data-hovercard-type="user" data-hovercard-url="/users/mhegazy/hovercard" data-octo-click="hovercard-link-click" data-octo-dimensions="link_type:self" href="https://github.com/mhegazy">@mhegazy</a> in <a class="issue-link js-issue-link" data-error-text="Failed to load title" data-id="6334624577" data-permission-text="Title is private" data-url="https://github.com/anthropics/claude-code-action/issues/2001" data-hovercard-type="pull_request" data-hovercard-url="/anthropics/claude-code-action/pull/2001/hovercard" href="https://github.com/anthropics/claude-code-action/pull/2001">#2001</a></li>
<li>Run sessions in auto mode by default by <a class="user-mention notranslate" data-hovercard-type="user" data-hovercard-url="/users/mhegazy/hovercard" data-octo-click="hovercard-link-click" data-octo-dimensions="link_type:self" href="https://github.com/mhegazy">@mhegazy</a> in <a class="issue-link js-issue-link" data-error-text="Failed to load title" data-id="6336012249" data-permission-text="Title is private" data-url="https://github.com/anthropics/claude-code-action/issues/2004" data-hovercard-type="pull_request" data-hovercard-url="/anthropics/claude-code-action/pull/2004/hovercard" href="https://github.com/anthropics/claude-code-action/pull/2004">#2004</a></li>
<li>Keep the token out of .git/config when bots are allowed by <a class="user-mention notranslate" data-hovercard-type="user" data-hovercard-url="/users/mhegazy/hovercard" data-octo-click="hovercard-link-click" data-octo-dimensions="link_type:self" href="https://github.com/mhegazy">@mhegazy</a> in <a class="issue-link js-issue-link" data-error-text="Failed to load title" data-id="6336459374" data-permission-text="Title is private" data-url="https://github.com/anthropics/claude-code-action/issues/2005" data-hovercard-type="pull_request" data-hovercard-url="/anthropics/claude-code-action/pull/2005/hovercard" href="https://github.com/anthropics/claude-code-action/pull/2005">#2005</a></li>
<li>Stop a session from leaving programs for later steps to run by <a class="user-mention notranslate" data-hovercard-type="user" data-hovercard-url="/users/mhegazy/hovercard" data-octo-click="hovercard-link-click" data-octo-dimensions="link_type:self" href="https://github.com/mhegazy">@mhegazy</a> in <a class="issue-link js-issue-link" data-error-text="Failed to load title" data-id="6335515654" data-permission-text="Title is private" data-url="https://github.com/anthropics/claude-code-action/issues/2003" data-hovercard-type="pull_request" data-hovercard-url="/anthropics/claude-code-action/pull/2003/hovercard" href="https://github.com/anthropics/claude-code-action/pull/2003">#2003</a></li>
<li>Keep fork branch names away from this repository's branches by <a class="user-mention notranslate" data-hovercard-type="user" data-hovercard-url="/users/mhegazy/hovercard" data-octo-click="hovercard-link-click" data-octo-dimensions="link_type:self" href="https://github.com/mhegazy">@mhegazy</a> in <a class="issue-link js-issue-link" data-error-text="Failed to load title" data-id="6336530155" data-permission-text="Title is private" data-url="https://github.com/anthropics/claude-code-action/issues/2007" data-hovercard-type="pull_request" data-hovercard-url="/anthropics/claude-code-action/pull/2007/hovercard" href="https://github.com/anthropics/claude-code-action/pull/2007">#2007</a></li>
<li>Stop forced pushes and file reads through the git allow rules by <a class="user-mention notranslate" data-hovercard-type="user" data-hovercard-url="/users/mhegazy/hovercard" data-octo-click="hovercard-link-click" data-octo-dimensions="link_type:self" href="https://github.com/mhegazy">@mhegazy</a> in <a class="issue-link js-issue-link" data-error-text="Failed to load title" data-id="6336496991" data-permission-text="Title is private" data-url="https://github.com/anthropics/claude-code-action/issues/2006" data-hovercard-type="pull_request" data-hovercard-url="/anthropics/claude-code-action/pull/2006/hovercard" href="https://github.com/anthropics/claude-code-action/pull/2006">#2006</a></li>
<li>Only trust text and runs from the person who passed the write check by <a class="user-mention notranslate" data-hovercard-type="user" data-hovercard-url="/users/mhegazy/hovercard" data-octo-click="hovercard-link-click" data-octo-dimensions="link_type:self" href="https://github.com/mhegazy">@mhegazy</a> in <a class="issue-link js-issue-link" data-error-text="Failed to load title" data-id="6335515006" data-permission-text="Title is private" data-url="https://github.com/anthropics/claude-code-action/issues/2002" data-hovercard-type="pull_request" data-hovercard-url="/anthropics/claude-code-action/pull/2002/hovercard" href="https://github.com/anthropics/claude-code-action/pull/2002">#2002</a></li>
</ul>
<h3>Other changes</h3>
<ul>
<li>Call out breaking changes in release notes and titles by <a class="user-mention notranslate" data-hovercard-type="user" data-hovercard-url="/users/mhegazy/hovercard" data-octo-click="hovercard-link-click" data-octo-dimensions="link_type:self" href="https://github.com/mhegazy">@mhegazy</a> in <a class="issue-link js-issue-link" data-error-text="Failed to load title" data-id="6355263919" data-permission-text="Title is private" data-url="https://github.com/anthropics/claude-code-action/issues/2013" data-hovercard-type="pull_request" data-hovercard-url="/anthropics/claude-code-action/pull/2013/hovercard" href="https://github.com/anthropics/claude-code-action/pull/2013">#2013</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a class="commit-link" href="https://github.com/anthropics/claude-code-action/compare/v1.0.272...v1.0.273"><tt>v1.0.272...v1.0.273</tt></a></p>
<h2><g-emoji class="g-emoji" alias="warning">⚠️</g-emoji> Upgrade notes: new security defaults</h2>
<p>This release tightens what a Claude session can do, especially on content from people without write access. Workflows on <code>@v1</code> get these changes automatically. Most keep working as they are, but check the items below if yours runs tests on outside pull requests, uses later steps after the action, or relies on <code>--allowedTools</code> as a strict list.</p>
<h3>Sessions start in auto mode</h3>
<p>A safety review now decides tool calls that no allow rule covers. Calls that used to be denied can run if the review passes, so <code>--allowedTools</code> is no longer a strict list. Workflows with a <code>prompt</code> can also edit workspace files without an allow rule.</p>
<p><strong>Opt out:</strong> set the earlier mode in <code>claude_args</code>: <code>--permission-mode acceptEdits</code> for <code>@claude</code> mentions, or <code>--permission-mode default</code> for workflows with a <code>prompt</code>.</p>
<p>Sessions keep the earlier defaults if you set <code>allowed_non_write_users</code>, <code>allowed_bots</code>, a custom <code>ANTHROPIC_BASE_URL</code> or <code>path_to_claude_code_executable</code>. The same applies if your <code>settings</code> input is a file path, or sets a base URL or another permission mode.</p>
<h3>Code-running commands are denied on outside pull requests</h3>
<p>If a pull request's author doesn't have write access, common commands such as <code>npm test</code> and <code>bun install</code> are denied, even if <code>claude_args</code> allows them. The run still succeeds, so check the log for a warning.</p>
<p><strong>Opt out:</strong> <code>restrict_untrusted_prs: false</code>. This lets code from that pull request run in a job that holds your workflow's tokens.</p>
<h3>Only trusted text and runs start a session</h3>
<ul>
<li>Slash commands and the trusted request come only from text the person who triggered the run wrote. Claude still reads a labeled or assigned issue's body for context.</li>
<li>Editing or deleting someone else's comment or review no longer starts a run.</li>
<li>With <code>prompt</code> and <code>track_progress</code>, <code>label_trigger</code> and <code>assignee_trigger</code> now apply.</li>
<li><code>workflow_run</code> also checks the owner of the fork the run came from.</li>
<li>A run started by a bot's activity on a pull request also needs that pull request's author to have write access or be an allowed bot.</li>
</ul>
<p><strong>Adjust:</strong></p>
<ul>
<li>If your workflow filters labels itself, set <code>label_trigger</code> to your label, or to <code>""</code> to accept any label.</li>
<li>For <code>workflow_run</code> on outside contributions, add those users to <code>allowed_non_write_users</code> and pass <code>github_token</code>.</li>
</ul>
<p>There's no opt-out for the rest.</p>
<h3>A session can't leave anything behind for later steps</h3>
<p><code>GITHUB_ENV</code>, <code>GITHUB_PATH</code> and git config are restored when the session ends, so a session's changes to them no longer reach later steps. Token revocation also ignores <code>~/.curlrc</code>, including a proxy set there.</p>
<p>Git hooks are also off from before the checkout on pull requests covered by <code>restrict_untrusted_prs</code>, so a push Claude makes on one of those won't upload Git LFS objects.</p>
<p><strong>Adjust:</strong> pass values to later steps with <code>GITHUB_OUTPUT</code> or <code>--json-schema</code>. There's no opt-out.</p>
<h3>No token in <code>.git/config</code> when <code>allowed_bots</code> is set</h3>
<p>These workflows now use the same credential helper as <code>allowed_non_write_users</code>, and it only answers for your GitHub server.</p>
<p><strong>Adjust:</strong> a later step that pushes through <code>origin</code>, or fetches from it on a private repository, needs its own credentials: <code>GH_TOKEN</code>, <code>GIT_ASKPASS</code>, a credential saved for the username <code>x-access-token</code>, or its own remote URL. There's no opt-out.</p>
<h3>Stricter git commands in <code>@claude</code> runs</h3>
<ul>
<li>Commits go through a wrapper that rejects flags outside a short list, including <code>--amend</code>, <code>--no-verify</code>, <code>--author</code> and flags that read a file.</li>
<li>Pushes can't be forced and only update the branch the session was set up on: a new branch, or the open pull request's branch.</li>
<li>A deny rule for <code>git commit</code> or <code>git push</code> must be in <code>claude_args</code> to cover these wrappers. One in a settings file doesn't.</li>
</ul>
<p><strong>Opt out:</strong> add your own rule in <code>claude_args</code>, such as <code>Bash(git commit:*)</code> or <code>Bash(git push:*)</code>. This brings back what the wrappers block for that workflow.</p>
<h3>Signed commits from <code>prompt</code> runs go to their own branch</h3>
<p>With <code>use_commit_signing</code>, a run on an issue now commits to <code>issue-N</code>. A run on a pull request commits to its branch, or to <code>pr-N</code> if that branch isn't known to be in this repository. They used to reach the default branch or a branch named by a fork.</p>
<p><strong>Opt out:</strong> set <code>CLAUDE_BRANCH</code> in the step's <code>env</code> to choose the branch.</p>

## Why It Matters
Source signal: <h2>What's Changed</h2>
<h3><g-emoji class="g-emoji" alias="warning">⚠️</g-emoji> Breaking changes</h3>
<ul>
<li>Deny code-running commands on PRs from authors without write access by <a class="user-mention notranslate" data-hovercard-type="user" data-hovercard-url="/users/mhegazy/hovercard" data-octo-click="hovercard-link-click" data-octo-dimensions="link_type:self" href="https://github.com/mhegazy">@mhegazy</a> in <a class="issue-link js-issue-link" data-error-text="Failed to load title" data-id="6334624577" data-permission-text="Title is private" data-url="https://github.com/anthropics/claude-code-action/issues/2001" data-hovercard-type="pull_request" data-hovercard-url="/anthropics/claude-code-action/pull/2001/hovercard" href="https://github.com/anthropics/claude-code-action/pull/2001">#2001</a></li>
<li>Run sessions in auto mode by default by <a class="user-mention notranslate" data-hovercard-type="user" data-hovercard-url="/users/mhegazy/hovercard" data-octo-click="hovercard-link-click" data-octo-dimensions="link_type:self" href="https://github.com/mhegazy">@mhegazy</a> in <a class="issue-link js-issue-link" data-error-text="Failed to load title" data-id="6336012249" data-permission-text="Title is private" data-url="https://github.com/anthropics/claude-code-action/issues/2004" data-hovercard-type="pull_request" data-hovercard-url="/anthropics/claude-code-action/pull/2004/hovercard" href="https://github.com/anthropics/claude-code-action/pull/2004">#2004</a></li>
<li>Keep the token out of .git/config when bots are allowed by <a class="user-mention notranslate" data-hovercard-type="user" data-hovercard-url="/users/mhegazy/hovercard" data-octo-click="hovercard-link-click" data-octo-dimensions="link_type:self" href="https://github.com/mhegazy">@mhegazy</a> in <a class="issue-link js-issue-link" data-error-text="Failed to load title" data-id="6336459374" data-permission-text="Title is private" data-url="https://github.com/anthropics/claude-code-action/issues/2005" data-hovercard-type="pull_request" data-hovercard-url="/anthropics/claude-code-action/pull/2005/hovercard" href="https://github.com/anthropics/claude-code-action/pull/2005">#2005</a></li>
<li>Stop a session from leaving programs for later steps to run by <a class="user-mention notranslate" data-hovercard-type="user" data-hovercard-url="/users/mhegazy/hovercard" data-octo-click="hovercard-link-click" data-octo-dimensions="link_type:self" href="https://github.com/mhegazy">@mhegazy</a> in <a class="issue-link js-issue-link" data-error-text="Failed to load title" data-id="6335515654" data-permission-text="Title is private" data-url="https://github.com/anthropics/claude-code-action/issues/2003" data-hovercard-type="pull_request" data-hovercard-url="/anthropics/claude-code-action/pull/2003/hovercard" href="https://github.com/anthropics/claude-code-action/pull/2003">#2003</a></li>
<li>Keep fork branch names away from this repository's branches by <a class="user-mention notranslate" data-hovercard-type="user" data-hovercard-url="/users/mhegazy/hovercard" data-octo-click="hovercard-link-click" data-octo-dimensions="link_type:self" href="https://github.com/mhegazy">@mhegazy</a> in <a class="issue-link js-issue-link" data-error-text="Failed to load title" data-id="6336530155" data-permission-text="Title is private" data-url="https://github.com/anthropics/claude-code-action/issues/2007" data-hovercard-type="pull_request" data-hovercard-url="/anthropics/claude-code-action/pull/2007/hovercard" href="https://github.com/anthropics/claude-code-action/pull/2007">#2007</a></li>
<li>Stop forced pushes and file reads through the git allow rules by <a class="user-mention notranslate" data-hovercard-type="user" data-hovercard-url="/users/mhegazy/hovercard" data-octo-click="hovercard-link-click" data-octo-dimensions="link_type:self" href="https://github.com/mhegazy">@mhegazy</a> in <a class="issue-link js-issue-link" data-error-text="Failed to load title" data-id="6336496991" data-permission-text="Title is private" data-url="https://github.com/anthropics/claude-code-action/issues/2006" data-hovercard-type="pull_request" data-hovercard-url="/anthropics/claude-code-action/pull/2006/hovercard" href="https://github.com/anthropics/claude-code-action/pull/2006">#2006</a></li>
<li>Only trust text and runs from the person who passed the write check by <a class="user-mention notranslate" data-hovercard-type="user" data-hovercard-url="/users/mhegazy/hovercard" data-octo-click="hovercard-link-click" data-octo-dimensions="link_type:self" href="https://github.com/mhegazy">@mhegazy</a> in <a class="issue-link js-issue-link" data-error-text="Failed to load title" data-id="6335515006" data-permission-text="Title is private" data-url="https://github.com/anthropics/claude-code-action/issues/2002" data-hovercard-type="pull_request" data-hovercard-url="/anthropics/claude-code-action/pull/2002/hovercard" href="https://github.com/anthropics/claude-code-action/pull/2002">#2002</a></li>
</ul>
<h3>Other changes</h3>
<ul>
<li>Call out breaking changes in release notes and titles by <a class="user-mention notranslate" data-hovercard-type="user" data-hovercard-url="/users/mhegazy/hovercard" data-octo-click="hovercard-link-click" data-octo-dimensions="link_type:self" href="https://github.com/mhegazy">@mhegazy</a> in <a class="issue-link js-issue-link" data-error-text="Failed to load title" data-id="6355263919" data-permission-text="Title is private" data-url="https://github.com/anthropics/claude-code-action/issues/2013" data-hovercard-type="pull_request" data-hovercard-url="/anthropics/claude-code-action/pull/2013/hovercard" href="https://github.com/anthropics/claude-code-action/pull/2013">#2013</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a class="commit-link" href="https://github.com/anthropics/claude-code-action/compare/v1.0.272...v1.0.273"><tt>v1.0.272...v1.0.273</tt></a></p>
<h2><g-emoji class="g-emoji" alias="warning">⚠️</g-emoji> Upgrade notes: new security defaults</h2>
<p>This release tightens what a Claude session can do, especially on content from people without write access. Workflows on <code>@v1</code> get these changes automatically. Most keep working as they are, but check the items below if yours runs tests on outside pull requests, uses later steps after the action, or relies on <code>--allowedTools</code> as a strict list.</p>
<h3>Sessions start in auto mode</h3>
<p>A safety review now decides tool calls that no allow rule covers. Calls that used to be denied can run if the review passes, so <code>--allowedTools</code> is no longer a strict list. Workflows with a <code>prompt</code> can also edit workspace files without an allow rule.</p>
<p><strong>Opt out:</strong> set the earlier mode in <code>claude_args</code>: <code>--permission-mode acceptEdits</code> for <code>@claude</code> mentions, or <code>--permission-mode default</code> for workflows with a <code>prompt</code>.</p>
<p>Sessions keep the earlier defaults if you set <code>allowed_non_write_users</code>, <code>allowed_bots</code>, a custom <code>ANTHROPIC_BASE_URL</code> or <code>path_to_claude_code_executable</code>. The same applies if your <code>settings</code> input is a file path, or sets a base URL or another permission mode.</p>
<h3>Code-running commands are denied on outside pull requests</h3>
<p>If a pull request's author doesn't have write access, common commands such as <code>npm test</code> and <code>bun install</code> are denied, even if <code>claude_args</code> allows them. The run still succeeds, so check the log for a warning.</p>
<p><strong>Opt out:</strong> <code>restrict_untrusted_prs: false</code>. This lets code from that pull request run in a job that holds your workflow's tokens.</p>
<h3>Only trusted text and runs start a session</h3>
<ul>
<li>Slash commands and the trusted request come only from text the person who triggered the run wrote. Claude still reads a labeled or assigned issue's body for context.</li>
<li>Editing or deleting someone else's comment or review no longer starts a run.</li>
<li>With <code>prompt</code> and <code>track_progress</code>, <code>label_trigger</code> and <code>assignee_trigger</code> now apply.</li>
<li><code>workflow_run</code> also checks the owner of the fork the run came from.</li>
<li>A run started by a bot's activity on a pull request also needs that pull request's author to have write access or be an allowed bot.</li>
</ul>
<p><strong>Adjust:</strong></p>
<ul>
<li>If your workflow filters labels itself, set <code>label_trigger</code> to your label, or to <code>""</code> to accept any label.</li>
<li>For <code>workflow_run</code> on outside contributions, add those users to <code>allowed_non_write_users</code> and pass <code>github_token</code>.</li>
</ul>
<p>There's no opt-out for the rest.</p>
<h3>A session can't leave anything behind for later steps</h3>
<p><code>GITHUB_ENV</code>, <code>GITHUB_PATH</code> and git config are restored when the session ends, so a session's changes to them no longer reach later steps. Token revocation also ignores <code>~/.curlrc</code>, including a proxy set there.</p>
<p>Git hooks are also off from before the checkout on pull requests covered by <code>restrict_untrusted_prs</code>, so a push Claude makes on one of those won't upload Git LFS objects.</p>
<p><strong>Adjust:</strong> pass values to later steps with <code>GITHUB_OUTPUT</code> or <code>--json-schema</code>. There's no opt-out.</p>
<h3>No token in <code>.git/config</code> when <code>allowed_bots</code> is set</h3>
<p>These workflows now use the same credential helper as <code>allowed_non_write_users</code>, and it only answers for your GitHub server.</p>
<p><strong>Adjust:</strong> a later step that pushes through <code>origin</code>, or fetches from it on a private repository, needs its own credentials: <code>GH_TOKEN</code>, <code>GIT_ASKPASS</code>, a credential saved for the username <code>x-access-token</code>, or its own remote URL. There's no opt-out.</p>
<h3>Stricter git commands in <code>@claude</code> runs</h3>
<ul>
<li>Commits go through a wrapper that rejects flags outside a short list, including <code>--amend</code>, <code>--no-verify</code>, <code>--author</code> and flags that read a file.</li>
<li>Pushes can't be forced and only update the branch the session was set up on: a new branch, or the open pull request's branch.</li>
<li>A deny rule for <code>git commit</code> or <code>git push</code> must be in <code>claude_args</code> to cover these wrappers. One in a settings file doesn't.</li>
</ul>
<p><strong>Opt out:</strong> add your own rule in <code>claude_args</code>, such as <code>Bash(git commit:*)</code> or <code>Bash(git push:*)</code>. This brings back what the wrappers block for that workflow.</p>
<h3>Signed commits from <code>prompt</code> runs go to their own branch</h3>
<p>With <code>use_commit_signing</code>, a run on an issue now commits to <code>issue-N</code>. A run on a pull request commits to its branch, or to <code>pr-N</code> if that branch isn't known to be in this repository. They used to reach the default branch or a branch named by a fork.</p>
<p><strong>Opt out:</strong> set <code>CLAUDE_BRANCH</code> in the step's <code>env</code> to choose the branch.</p>
Implication: Potentially relevant for our LLM/Agent roadmap, and should be triaged for question/eval updates.

## Evidence/Quotes (short)
- Source URL only. Add short excerpts during triage if needed.

## Relevance to NPY
TBD

## Suggested Action
- Triage into 09_resources/news/
- Add question: 01_questions/...
- Add experiment: 03_experiments/...
