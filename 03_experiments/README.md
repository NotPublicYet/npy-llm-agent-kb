# Experiments | 实验规范

Experiments must be reproducible and decision-oriented.
实验必须可复现，并服务于明确决策。

## Folder Naming | 目录命名

- `exp-####-short-title/`
- Example: `exp-0001-retrieval-augmentation-baseline/`

- `exp-####-short-title/`
- 例：`exp-0001-retrieval-augmentation-baseline/`

## Experiment Template | 实验模板

Create a folder under a month bucket (example: `2026-02/exp-0001-.../`) with:

- `README.md` (hypothesis, setup, controls, results, decision)
- `config/` (model/tool parameters)
- `runbook.md` (exact execution steps)
- `artifacts/` (sanitized outputs)
- `results.md` (metric table + interpretation)

在月份目录下（如 `2026-02/exp-0001-.../`）创建：

- `README.md`（假设、设置、对照、结果、决策）
- `config/`（模型/工具参数）
- `runbook.md`（可复现步骤）
- `artifacts/`（脱敏产物）
- `results.md`（指标表与解读）

Suggested `README.md` skeleton:

```md
# exp-0001-short-title

Status: Draft
Owner: @owner
Date: YYYY-MM-DD
Linked Question: ../..../q-####-short-title.md

## Hypothesis

## Setup
- Model/version:
- Prompt/tool versions:
- Dataset/source:

## Controls and Baselines

## Procedure

## Results

## Decision
- Adopt / Iterate / Reject
```

## Reproducibility Rules | 可复现规则

- Pin model versions and key parameters.
- Record dataset snapshot IDs and sampling method.
- Keep deterministic settings when possible.
- Capture command lines and environment assumptions.
- Separate observations from interpretation.
- Do not include sensitive raw data.

- 固定模型版本与关键参数。
- 记录数据快照 ID 与采样方式。
- 尽可能固定随机性设置。
- 记录命令行与环境假设。
- 区分“观察结果”与“解释结论”。
- 禁止纳入敏感原始数据。
