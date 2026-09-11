# news-2026-09-11-release-publish-7444f28d2dc5-1789076455-fix-ci-prepare-selec

Automation: NewsIngest/v1
SourceID: openclaw-releases
SourceURL: https://github.com/openclaw/openclaw/releases/tag/release-publish%2F7444f28d2dc5-1789076455
IngestedAt: 2026-09-11
Status: Untriaged
Submitted date: 2026-09-11
Submitter: @news-bot
Proposed destination: 09_resources/news/
Sensitivity notes: Public source material only

Date Captured: 2026-09-11
Event Date: 2026-09-10
Publish Date: 2026-09-10
Source: OpenClaw Releases
URL: https://github.com/openclaw/openclaw/releases/tag/release-publish%2F7444f28d2dc5-1789076455
Type: News
Confidence: High
Validation Status: valid

## Summary
<ul>
<li>fix(ci): prepare selected release native fixtures</li>
</ul>
<p>Enable and prepare the selected native heartbeat live test through its<br>
existing runtime build owner. Keep Doctor scenario and canonical-path<br>
service shims on the same selected checkout while retaining trusted shared<br>
helpers. Complete the managed test's ephemeral TCP endpoint adapter so<br>
shutdown verification cannot observe an unrelated host Gateway.</p>
<p>Qualification context: <a href="https://github.com/openclaw/openclaw/actions/runs/34507645027">https://github.com/openclaw/openclaw/actions/runs/34507645027</a></p>
<p>Co-authored-by: steipete <a href="mailto:58493+steipete@users.noreply.github.com">58493+steipete@users.noreply.github.com</a><br>
Co-authored-by: vincentkoc <a href="mailto:25068+vincentkoc@users.noreply.github.com">25068+vincentkoc@users.noreply.github.com</a></p>
<ul>
<li>test(ci): bind live-shard cancellation to the test child</li>
</ul>
<p>Use an isolated APNs-only inventory through the existing shard selector so<br>
build preparation cannot masquerade as live-child readiness. Assert the<br>
actual test:live arguments and join owned processes before fixture cleanup.</p>
<p>Preserve the original signal, descendant-death, and timeout assertions.<br>
The original 20-file CI order passes all 332 tests after the correction.</p>
<p>Co-authored-by: steipete <a href="mailto:58493+steipete@users.noreply.github.com">58493+steipete@users.noreply.github.com</a><br>
Co-authored-by: vincentkoc <a href="mailto:25068+vincentkoc@users.noreply.github.com">25068+vincentkoc@users.noreply.github.com</a></p>
<hr>
<p>Co-authored-by: roboclaw-bot <a href="mailto:309084314+roboclaw-bot@users.noreply.github.com">309084314+roboclaw-bot@users.noreply.github.com</a><br>
Co-authored-by: steipete <a href="mailto:58493+steipete@users.noreply.github.com">58493+steipete@users.noreply.github.com</a><br>
Co-authored-by: vincentkoc <a href="mailto:25068+vincentkoc@users.noreply.github.com">25068+vincentkoc@users.noreply.github.com</a></p>

## Why It Matters
Source signal: <ul>
<li>fix(ci): prepare selected release native fixtures</li>
</ul>
<p>Enable and prepare the selected native heartbeat live test through its<br>
existing runtime build owner. Keep Doctor scenario and canonical-path<br>
service shims on the same selected checkout while retaining trusted shared<br>
helpers. Complete the managed test's ephemeral TCP endpoint adapter so<br>
shutdown verification cannot observe an unrelated host Gateway.</p>
<p>Qualification context: <a href="https://github.com/openclaw/openclaw/actions/runs/34507645027">https://github.com/openclaw/openclaw/actions/runs/34507645027</a></p>
<p>Co-authored-by: steipete <a href="mailto:58493+steipete@users.noreply.github.com">58493+steipete@users.noreply.github.com</a><br>
Co-authored-by: vincentkoc <a href="mailto:25068+vincentkoc@users.noreply.github.com">25068+vincentkoc@users.noreply.github.com</a></p>
<ul>
<li>test(ci): bind live-shard cancellation to the test child</li>
</ul>
<p>Use an isolated APNs-only inventory through the existing shard selector so<br>
build preparation cannot masquerade as live-child readiness. Assert the<br>
actual test:live arguments and join owned processes before fixture cleanup.</p>
<p>Preserve the original signal, descendant-death, and timeout assertions.<br>
The original 20-file CI order passes all 332 tests after the correction.</p>
<p>Co-authored-by: steipete <a href="mailto:58493+steipete@users.noreply.github.com">58493+steipete@users.noreply.github.com</a><br>
Co-authored-by: vincentkoc <a href="mailto:25068+vincentkoc@users.noreply.github.com">25068+vincentkoc@users.noreply.github.com</a></p>
<hr>
<p>Co-authored-by: roboclaw-bot <a href="mailto:309084314+roboclaw-bot@users.noreply.github.com">309084314+roboclaw-bot@users.noreply.github.com</a><br>
Co-authored-by: steipete <a href="mailto:58493+steipete@users.noreply.github.com">58493+steipete@users.noreply.github.com</a><br>
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
