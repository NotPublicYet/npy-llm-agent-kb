# Evaluation | 评估总览

Use this area to enforce comparable, repeatable quality measurement.
本目录用于建立可比较、可重复的质量评估体系。

## Core Files | 核心文件

- `eval-philosophy.md`: why and how we evaluate.
- `metrics.md`: metric definitions and thresholds.
- `datasets/`: golden and synthetic evaluation data policy.
- `benchmarks/`: benchmark definitions and runs.
- `scorecards/`: standardized reporting templates.
- `harness/`: scripts/config for running eval suites.

- `eval-philosophy.md`：评估目的与方法。
- `metrics.md`：指标定义与阈值。
- `datasets/`：黄金集与合成集策略。
- `benchmarks/`：基准定义与运行结果。
- `scorecards/`：标准化报告模板。
- `harness/`：评估执行脚本与配置。

## Operating Rules | 运行规则

- Every score maps to a metric in `metrics.md`.
- Always compare against explicit baselines.
- Track regressions before promoting patterns.

- 每个评分都必须映射到 `metrics.md` 中已定义指标。
- 必须有明确基线对比。
- 模式升级前必须完成回归检查。
