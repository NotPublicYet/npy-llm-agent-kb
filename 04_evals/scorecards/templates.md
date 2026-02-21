# Scorecard Templates | 评分卡模板

## Lightweight Scorecard | 轻量评分卡

```md
# scorecard-YYYY-MM-DD-exp-####

Experiment: exp-####-short-title
Owner: @owner
Date: YYYY-MM-DD
Baseline: <name/version>
Candidate: <name/version>

## Metrics
| Metric | Baseline | Candidate | Delta | Decision Threshold | Pass/Fail |
|---|---:|---:|---:|---:|---|
| Task Success Rate |  |  |  |  |  |
| Factuality/Error Rate |  |  |  |  |  |
| Tool-Use Reliability |  |  |  |  |  |
| Latency p95 |  |  |  |  |  |
| Cost per Success |  |  |  |  |  |
| Safety Violations |  |  |  |  |  |

## Notes
- Key observations:
- Risks:
- Recommendation: Adopt / Iterate / Reject
```

中文填写建议：

- Key observations：关键观察
- Risks：风险点
- Recommendation：结论（采用/迭代/拒绝）

## Rubric Add-on | Rubric 附加项

For qualitative dimensions, append rubric scores from `06_components/rubrics/rubric-template.md`.
定性维度可附加 `06_components/rubrics/rubric-template.md` 的评分结果。
