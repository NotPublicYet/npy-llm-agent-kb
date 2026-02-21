# npy-llm-agent-kb

Internal NPY knowledge base for LLM and agent usage, methods, innovation, and organizational learning.

NPY 内部知识库，聚焦 LLM/Agent 的使用方法、创新实践与组织化学习。

## Purpose | 目标

- Capture reusable patterns, not one-off tips.
- Run reproducible experiments with explicit hypotheses.
- Evaluate with discipline (clear metrics, baselines, and scorecards).
- Preserve insights and decisions so teams do not relearn the same lesson.

- 沉淀可复用模式，而非一次性技巧。
- 基于明确假设开展可复现实验。
- 以清晰指标、基线与评分卡进行评估。
- 固化洞察与决策，避免组织重复踩坑。

## Quick Start | 快速开始

1. Read `00_foundation/north-star.md` and `00_foundation/principles.md`.
2. Add a question in `01_questions/` using `q-####-short-title.md`.
3. Run an experiment in `03_experiments/` using `exp-####-short-title/`.
4. Record evaluation results in `04_evals/scorecards/`.
5. Capture outcomes in `07_insights/` and promote stable methods to `02_patterns/`.

1. 阅读 `00_foundation/north-star.md` 与 `00_foundation/principles.md`。
2. 在 `01_questions/` 按 `q-####-short-title.md` 新增问题。
3. 在 `03_experiments/` 按 `exp-####-short-title/` 运行实验。
4. 在 `04_evals/scorecards/` 记录评估结果。
5. 在 `07_insights/` 沉淀结论，并将稳定方法升级到 `02_patterns/`。

## Where Things Go | 内容放置

- `00_foundation/`: enduring direction, language, taxonomy.
- `01_questions/`: prioritized questions and unknowns.
- `02_patterns/`: vetted implementation patterns.
- `03_experiments/`: reproducible experiment runs and artifacts.
- `04_evals/`: philosophy, metrics, datasets, benchmarks, scorecards.
- `05_playbooks/`: operational procedures.
- `06_components/`: reusable prompt, agent, tool, rubric templates.
- `07_insights/`: weekly notes, postmortems, case studies, essays.
- `08_ideas-incubator/`: early concepts and pitch-ready ideas.
- `09_resources/`: news, official docs, articles, videos, curated links.
- `90_inbox/`: untriaged inputs (must be triaged within 7 days).
- `99_archive/`: retired/obsolete content with archival notes.

- `00_foundation/`：长期方向、术语与分类。
- `01_questions/`：优先级问题与未知项。
- `02_patterns/`：经过验证的实践模式。
- `03_experiments/`：可复现实验与产物。
- `04_evals/`：评估理念、指标、数据集、基准与评分卡。
- `05_playbooks/`：操作手册。
- `06_components/`：可复用模板（提示词、Agent、工具、Rubric）。
- `07_insights/`：周记、复盘、案例、观点文。
- `08_ideas-incubator/`：早期创意与提案。
- `09_resources/`：新闻、官方文档、知识文章、视频与精选链接。
- `90_inbox/`：待分拣内容（7 天内必须分诊）。
- `99_archive/`：归档内容与归档说明。

## Working Norms | 工作约定

- Prefer small, linkable documents over large monoliths.
- Every claim should point to evidence (experiment, eval, or external source).
- Avoid raw sensitive data and secrets in the repo. See `SECURITY.md`.

- 优先小而可链接的文档，避免大而全。
- 所有结论应可追溯到证据（实验、评估或外部来源）。
- 仓库禁止原始敏感数据与密钥，详见 `SECURITY.md`。
