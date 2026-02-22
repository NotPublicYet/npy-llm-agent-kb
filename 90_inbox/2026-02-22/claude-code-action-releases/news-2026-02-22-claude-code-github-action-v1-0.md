# news-2026-02-22-claude-code-github-action-v1-0

Automation: NewsIngest/v1
SourceID: claude-code-action-releases
SourceURL: https://github.com/anthropics/claude-code-action/releases/tag/v1
IngestedAt: 2026-02-22
Status: Untriaged
Submitted date: 2026-02-22
Submitter: @news-bot
Proposed destination: 09_resources/news/
Sensitivity notes: Public source material only

Date Captured: 2026-02-22
Event Date: 2026-02-19
Publish Date: 2026-02-19
Source: Claude Code Action Releases
URL: https://github.com/anthropics/claude-code-action/releases/tag/v1
Type: News
Confidence: Medium
Validation Status: valid

## Summary
<h1>🎉 Claude Code GitHub Action v1.0 - Now Generally Available!</h1>
<p>We're excited to announce the v1.0 release of Claude Code GitHub Action! This major release brings significant improvements in simplicity, flexibility, and power to AI-assisted development workflows.</p>
<h2>🚀 What's New in v1.0</h2>
<h3>Simplified Configuration</h3>
<ul>
<li><strong>Automatic mode detection</strong> - No more manual <code>mode</code> configuration. The action intelligently determines whether to run in interactive or automation mode based on your setup</li>
<li><strong>Unified interface</strong> - All prompts now go through a single <code>prompt</code> input, and all CLI options through <code>claude_args</code></li>
<li><strong>Better SDK alignment</strong> - Closer integration with the Claude Code CLI for a consistent experience</li>
</ul>
<h3>More Powerful &amp; Flexible</h3>
<ul>
<li>Direct access to all Claude Code CLI capabilities through <code>claude_args</code></li>
<li>Support for custom system prompts, tool configurations, and model selection</li>
<li>Enhanced compatibility with AWS Bedrock and Google Vertex AI</li>
</ul>
<h2><g-emoji class="g-emoji" alias="warning">⚠️</g-emoji> Breaking Changes</h2>
<p>This release includes breaking changes from v0.x. Key deprecated inputs have been replaced with a cleaner, more intuitive API:</p>
<ul>
<li><code>mode</code>, <code>direct_prompt</code>, <code>override_prompt</code> → unified <code>prompt</code> input</li>
<li><code>custom_instructions</code>, <code>model</code>, <code>allowed_tools</code>, <code>mcp_config</code> → <code>claude_args</code> with CLI format</li>
<li>Other deprecated: <code>disallowed_tools</code>, <code>anthropic_model</code>, <code>trigger_phrase</code>, <code>timeout_minutes</code></li>
</ul>
<p><strong>📚 Please review our <a href="https://github.com/anthropics/claude-code-action/blob/main/docs/migration-guide.md">Migration Guide</a> for detailed upgrade instructions and examples.</strong></p>
<h2>💡 New Use Cases &amp; Examples</h2>
<p>Explore the expanded possibilities with v1.0! We've created comprehensive examples showcasing various workflows:</p>
<ul>
<li><strong>Automated PR Reviews</strong> - Intelligent code review on every pull request</li>
<li><strong>CI Failure Fixes</strong> - Automatically diagnose and fix failing tests</li>
<li><strong>Issue Triage</strong> - Smart categorization and response to new issues</li>
<li><strong>Documentation Generation</strong> - Keep docs in sync with code changes</li>
<li><strong>Security Scanning</strong> - Proactive vulnerability detection</li>
<li><strong>And many more!</strong></li>
</ul>
<p><strong>🔧 Check out all examples at <a href="https://github.com/anthropics/claude-code-action/tree/main/examples">github.com/anthropics/claude-code-action/tree/main/examples</a></strong></p>
<h2>🏃 Quick Start</h2>
<div class="highlight highlight-source-yaml notranslate position-relative overflow-auto" data-snippet-clipboard-copy-content="# Interactive mode - responds to @claude mentions
- uses: anthropics/claude-code-action@v1
  with:
    anthropic_api_key: ${{ secrets.ANTHROPIC_API_KEY }}

# Automation mode - runs immediately with prompt
- uses: anthropics/claude-code-action@v1
  with:
    prompt: &quot;Review this PR for security issues&quot;
    anthropic_api_key: ${{ secrets.ANTHROPIC_API_KEY }}
    claude_args: |
      --model claude-4-0-sonnet-20250805
      --max-turns 10"><pre><span class="pl-c"><span class="pl-c">#</span> Interactive mode - responds to @claude mentions</span>
- <span class="pl-ent">uses</span>: <span class="pl-s">anthropics/claude-code-action@v1</span>
  <span class="pl-ent">with</span>:
    <span class="pl-ent">anthropic_api_key</span>: <span class="pl-s">${{ secrets.ANTHROPIC_API_KEY }}</span>

<span class="pl-c"><span class="pl-c">#</span> Automation mode - runs immediately with prompt</span>
- <span class="pl-ent">uses</span>: <span class="pl-s">anthropics/claude-code-action@v1</span>
  <span class="pl-ent">with</span>:
    <span class="pl-ent">prompt</span>: <span class="pl-s"><span class="pl-pds">"</span>Review this PR for security issues<span class="pl-pds">"</span></span>
    <span class="pl-ent">anthropic_api_key</span>: <span class="pl-s">${{ secrets.ANTHROPIC_API_KEY }}</span>
    <span class="pl-ent">claude_args</span>: <span class="pl-s">|</span>
<span class="pl-s">      --model claude-4-0-sonnet-20250805</span>
<span class="pl-s">      --max-turns 10</span></pre></div>
<h2>📖 Resources</h2>
<ul>
<li><a href="https://github.com/anthropics/claude-code-action/blob/main/docs/migration-guide.md">Migration Guide</a> - Step-by-step upgrade instructions</li>
<li><a href="https://github.com/anthropics/claude-code-action/tree/main/examples">Examples</a> - Ready-to-use workflow templates</li>
<li><a href="https://github.com/anthropics/claude-code-action#readme">Documentation</a> - Complete setup and configuration guide</li>
</ul>
<h2>🙏 Thank You</h2>
<p>Thank you to our beta users for your invaluable feedback that shaped this release. We're excited to see what you'll build with Claude Code GitHub Action v1.0!</p>

## Why It Matters
Source signal: <h1>🎉 Claude Code GitHub Action v1.0 - Now Generally Available!</h1>
<p>We're excited to announce the v1.0 release of Claude Code GitHub Action! This major release brings significant improvements in simplicity, flexibility, and power to AI-assisted development workflows.</p>
<h2>🚀 What's New in v1.0</h2>
<h3>Simplified Configuration</h3>
<ul>
<li><strong>Automatic mode detection</strong> - No more manual <code>mode</code> configuration. The action intelligently determines whether to run in interactive or automation mode based on your setup</li>
<li><strong>Unified interface</strong> - All prompts now go through a single <code>prompt</code> input, and all CLI options through <code>claude_args</code></li>
<li><strong>Better SDK alignment</strong> - Closer integration with the Claude Code CLI for a consistent experience</li>
</ul>
<h3>More Powerful &amp; Flexible</h3>
<ul>
<li>Direct access to all Claude Code CLI capabilities through <code>claude_args</code></li>
<li>Support for custom system prompts, tool configurations, and model selection</li>
<li>Enhanced compatibility with AWS Bedrock and Google Vertex AI</li>
</ul>
<h2><g-emoji class="g-emoji" alias="warning">⚠️</g-emoji> Breaking Changes</h2>
<p>This release includes breaking changes from v0.x. Key deprecated inputs have been replaced with a cleaner, more intuitive API:</p>
<ul>
<li><code>mode</code>, <code>direct_prompt</code>, <code>override_prompt</code> → unified <code>prompt</code> input</li>
<li><code>custom_instructions</code>, <code>model</code>, <code>allowed_tools</code>, <code>mcp_config</code> → <code>claude_args</code> with CLI format</li>
<li>Other deprecated: <code>disallowed_tools</code>, <code>anthropic_model</code>, <code>trigger_phrase</code>, <code>timeout_minutes</code></li>
</ul>
<p><strong>📚 Please review our <a href="https://github.com/anthropics/claude-code-action/blob/main/docs/migration-guide.md">Migration Guide</a> for detailed upgrade instructions and examples.</strong></p>
<h2>💡 New Use Cases &amp; Examples</h2>
<p>Explore the expanded possibilities with v1.0! We've created comprehensive examples showcasing various workflows:</p>
<ul>
<li><strong>Automated PR Reviews</strong> - Intelligent code review on every pull request</li>
<li><strong>CI Failure Fixes</strong> - Automatically diagnose and fix failing tests</li>
<li><strong>Issue Triage</strong> - Smart categorization and response to new issues</li>
<li><strong>Documentation Generation</strong> - Keep docs in sync with code changes</li>
<li><strong>Security Scanning</strong> - Proactive vulnerability detection</li>
<li><strong>And many more!</strong></li>
</ul>
<p><strong>🔧 Check out all examples at <a href="https://github.com/anthropics/claude-code-action/tree/main/examples">github.com/anthropics/claude-code-action/tree/main/examples</a></strong></p>
<h2>🏃 Quick Start</h2>
<div class="highlight highlight-source-yaml notranslate position-relative overflow-auto" data-snippet-clipboard-copy-content="# Interactive mode - responds to @claude mentions
- uses: anthropics/claude-code-action@v1
  with:
    anthropic_api_key: ${{ secrets.ANTHROPIC_API_KEY }}

# Automation mode - runs immediately with prompt
- uses: anthropics/claude-code-action@v1
  with:
    prompt: &quot;Review this PR for security issues&quot;
    anthropic_api_key: ${{ secrets.ANTHROPIC_API_KEY }}
    claude_args: |
      --model claude-4-0-sonnet-20250805
      --max-turns 10"><pre><span class="pl-c"><span class="pl-c">#</span> Interactive mode - responds to @claude mentions</span>
- <span class="pl-ent">uses</span>: <span class="pl-s">anthropics/claude-code-action@v1</span>
  <span class="pl-ent">with</span>:
    <span class="pl-ent">anthropic_api_key</span>: <span class="pl-s">${{ secrets.ANTHROPIC_API_KEY }}</span>

<span class="pl-c"><span class="pl-c">#</span> Automation mode - runs immediately with prompt</span>
- <span class="pl-ent">uses</span>: <span class="pl-s">anthropics/claude-code-action@v1</span>
  <span class="pl-ent">with</span>:
    <span class="pl-ent">prompt</span>: <span class="pl-s"><span class="pl-pds">"</span>Review this PR for security issues<span class="pl-pds">"</span></span>
    <span class="pl-ent">anthropic_api_key</span>: <span class="pl-s">${{ secrets.ANTHROPIC_API_KEY }}</span>
    <span class="pl-ent">claude_args</span>: <span class="pl-s">|</span>
<span class="pl-s">      --model claude-4-0-sonnet-20250805</span>
<span class="pl-s">      --max-turns 10</span></pre></div>
<h2>📖 Resources</h2>
<ul>
<li><a href="https://github.com/anthropics/claude-code-action/blob/main/docs/migration-guide.md">Migration Guide</a> - Step-by-step upgrade instructions</li>
<li><a href="https://github.com/anthropics/claude-code-action/tree/main/examples">Examples</a> - Ready-to-use workflow templates</li>
<li><a href="https://github.com/anthropics/claude-code-action#readme">Documentation</a> - Complete setup and configuration guide</li>
</ul>
<h2>🙏 Thank You</h2>
<p>Thank you to our beta users for your invaluable feedback that shaped this release. We're excited to see what you'll build with Claude Code GitHub Action v1.0!</p>
Implication: May require updating model/tool selection, baseline comparisons, and ongoing experiment assumptions.

## Evidence/Quotes (short)
- Source URL only. Add short excerpts during triage if needed.

## Relevance to NPY
TBD

## Suggested Action
- Triage into 09_resources/news/
- Add question: 01_questions/...
- Add experiment: 03_experiments/...
