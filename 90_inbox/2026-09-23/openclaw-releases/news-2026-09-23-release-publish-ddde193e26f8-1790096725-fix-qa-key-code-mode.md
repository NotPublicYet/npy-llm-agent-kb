# news-2026-09-23-release-publish-ddde193e26f8-1790096725-fix-qa-key-code-mode

Automation: NewsIngest/v1
SourceID: openclaw-releases
SourceURL: https://github.com/openclaw/openclaw/releases/tag/release-publish%2Fddde193e26f8-1790096725
IngestedAt: 2026-09-23
Status: Untriaged
Submitted date: 2026-09-23
Submitter: @news-bot
Proposed destination: 09_resources/news/
Sensitivity notes: Public source material only

Date Captured: 2026-09-23
Event Date: 2026-09-22
Publish Date: 2026-09-22
Source: OpenClaw Releases
URL: https://github.com/openclaw/openclaw/releases/tag/release-publish%2Fddde193e26f8-1790096725
Type: News
Confidence: High
Validation Status: valid

## Summary
<h2>Summary</h2>
<p>Unblocks the 2026.9.6 Full Release Validation (Release Checks run 35743792326, jobs 106800921622 and 106800921540): <code>compaction-retry-mutating-tool</code> failed identically in the parity (candidate) and runtime-pair (core) lanes with <code>Code Mode terminal continuation did not report successful completion</code>.</p>
<h2>Root cause</h2>
<p>The scenario picked the expected terminal-continuation shape by provider variant: <code>openai</code> meant the Codex-native <code>Script completed\n...</code> text and <code>anthropic</code> meant the guest JSON <code>{ "status": "completed", ... }</code> result. The <code>Script completed</code> text only exists in the Codex harness (<code>extensions/codex</code>); the OpenClaw runtime's Code Mode always returns the guest JSON regardless of model.</p>
<p>Until <a class="issue-link js-issue-link" data-error-text="Failed to load title" data-id="5537591404" data-permission-text="Title is private" data-url="https://github.com/openclaw/openclaw/issues/155614" data-hovercard-type="pull_request" data-hovercard-url="/openclaw/openclaw/pull/155614/hovercard" href="https://github.com/openclaw/openclaw/pull/155614">#155614</a> an absent <code>tools.codeMode</code> defaulted to off, so this mock-openai lane performed the write through the direct <code>write</code> tool and the <code>writeWireToolName !== 'exec'</code> guard short-circuited the assertion. <a class="issue-link js-issue-link" data-error-text="Failed to load title" data-id="5537591404" data-permission-text="Title is private" data-url="https://github.com/openclaw/openclaw/issues/155614" data-hovercard-type="pull_request" data-hovercard-url="/openclaw/openclaw/pull/155614/hovercard" href="https://github.com/openclaw/openclaw/pull/155614">#155614</a> made the absent setting behave as <code>"auto"</code>, so <code>openai/gpt-5.5</code> now routes the write through guest <code>exec</code> and the never-satisfiable native branch fired. The product behaved correctly: the local repro shows the terminal continuation carrying <code>{"status":"completed", ..., "value":{"changed":true,"created":true,...}}</code>, the file with the exact expected content, and one compaction.</p>
<h2>Fix</h2>
<ul>
<li>Mock OpenAI records the resolved Code Mode exec surface (<code>native</code> = freeform custom tool, <code>guest</code> = <code>code</code>-schema tool) on every request snapshot (<code>codeModeExecSurface</code>).</li>
<li>The scenario keys the terminal-evidence assertion on that surface instead of the provider variant, still failing closed when neither surface is present. This is strictly stronger for the OpenClaw runtime: OpenAI-model guest runs are now actually verified for <code>status === "completed"</code> instead of being skipped.</li>
<li>Catalog test pins updated to the new discriminator.</li>
</ul>
<h2>Proof</h2>
<ul>
<li><code>node scripts/run-node.mjs qa suite --provider-mode mock-openai --parity-pack agentic --concurrency 1 --model openai/gpt-5.5 --alt-model openai/gpt-5.6-luna-alt --scenario compaction-retry-mutating-tool</code> on origin/main: fail (reproduced CI). With this change: pass, details <code>wireTool=exec ... wireSuccesses=1 compactions=1</code>.</li>
<li><code>scenario-catalog-compaction</code>, <code>scenario-catalog</code>, <code>mock-openai/server</code>, <code>agentic-parity-report</code> tests: 417 passed.</li>
</ul>
<p>Co-authored-by: Peter Steinberger <a href="mailto:steipete@gmail.com">steipete@gmail.com</a></p>

## Why It Matters
Source signal: <h2>Summary</h2>
<p>Unblocks the 2026.9.6 Full Release Validation (Release Checks run 35743792326, jobs 106800921622 and 106800921540): <code>compaction-retry-mutating-tool</code> failed identically in the parity (candidate) and runtime-pair (core) lanes with <code>Code Mode terminal continuation did not report successful completion</code>.</p>
<h2>Root cause</h2>
<p>The scenario picked the expected terminal-continuation shape by provider variant: <code>openai</code> meant the Codex-native <code>Script completed\n...</code> text and <code>anthropic</code> meant the guest JSON <code>{ "status": "completed", ... }</code> result. The <code>Script completed</code> text only exists in the Codex harness (<code>extensions/codex</code>); the OpenClaw runtime's Code Mode always returns the guest JSON regardless of model.</p>
<p>Until <a class="issue-link js-issue-link" data-error-text="Failed to load title" data-id="5537591404" data-permission-text="Title is private" data-url="https://github.com/openclaw/openclaw/issues/155614" data-hovercard-type="pull_request" data-hovercard-url="/openclaw/openclaw/pull/155614/hovercard" href="https://github.com/openclaw/openclaw/pull/155614">#155614</a> an absent <code>tools.codeMode</code> defaulted to off, so this mock-openai lane performed the write through the direct <code>write</code> tool and the <code>writeWireToolName !== 'exec'</code> guard short-circuited the assertion. <a class="issue-link js-issue-link" data-error-text="Failed to load title" data-id="5537591404" data-permission-text="Title is private" data-url="https://github.com/openclaw/openclaw/issues/155614" data-hovercard-type="pull_request" data-hovercard-url="/openclaw/openclaw/pull/155614/hovercard" href="https://github.com/openclaw/openclaw/pull/155614">#155614</a> made the absent setting behave as <code>"auto"</code>, so <code>openai/gpt-5.5</code> now routes the write through guest <code>exec</code> and the never-satisfiable native branch fired. The product behaved correctly: the local repro shows the terminal continuation carrying <code>{"status":"completed", ..., "value":{"changed":true,"created":true,...}}</code>, the file with the exact expected content, and one compaction.</p>
<h2>Fix</h2>
<ul>
<li>Mock OpenAI records the resolved Code Mode exec surface (<code>native</code> = freeform custom tool, <code>guest</code> = <code>code</code>-schema tool) on every request snapshot (<code>codeModeExecSurface</code>).</li>
<li>The scenario keys the terminal-evidence assertion on that surface instead of the provider variant, still failing closed when neither surface is present. This is strictly stronger for the OpenClaw runtime: OpenAI-model guest runs are now actually verified for <code>status === "completed"</code> instead of being skipped.</li>
<li>Catalog test pins updated to the new discriminator.</li>
</ul>
<h2>Proof</h2>
<ul>
<li><code>node scripts/run-node.mjs qa suite --provider-mode mock-openai --parity-pack agentic --concurrency 1 --model openai/gpt-5.5 --alt-model openai/gpt-5.6-luna-alt --scenario compaction-retry-mutating-tool</code> on origin/main: fail (reproduced CI). With this change: pass, details <code>wireTool=exec ... wireSuccesses=1 compactions=1</code>.</li>
<li><code>scenario-catalog-compaction</code>, <code>scenario-catalog</code>, <code>mock-openai/server</code>, <code>agentic-parity-report</code> tests: 417 passed.</li>
</ul>
<p>Co-authored-by: Peter Steinberger <a href="mailto:steipete@gmail.com">steipete@gmail.com</a></p>
Implication: May require updating model/tool selection, baseline comparisons, and ongoing experiment assumptions.

## Evidence/Quotes (short)
- Source URL only. Add short excerpts during triage if needed.

## Relevance to NPY
TBD

## Suggested Action
- Triage into 09_resources/news/
- Add question: 01_questions/...
- Add experiment: 03_experiments/...
