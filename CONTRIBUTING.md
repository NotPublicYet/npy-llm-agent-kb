# Contributing | 贡献指南

## Writing Standards | 写作标准

- Write for reuse: include context, decision, and implications.
- Keep docs concise and scannable with explicit section headers.
- Use concrete examples, not abstract advice.
- Link to source evidence (experiment IDs, scorecards, benchmarks).

- 面向复用写作：说明背景、决策与影响。
- 保持简洁可扫读，使用明确标题。
- 使用具体示例，避免空泛建议。
- 结论要链接证据（实验 ID、评分卡、基准）。

## Naming Conventions | 命名规范

- Questions: `q-####-short-title.md`.
- Experiments: `exp-####-short-title/`.
- Use lowercase and hyphenated names.
- One topic per file.

- 问题文件：`q-####-short-title.md`。
- 实验目录：`exp-####-short-title/`。
- 小写 + 连字符命名。
- 一个文件只聚焦一个主题。

## Review Process | 评审流程

1. Open PR with problem statement, scope, and affected folders.
2. Add at least one reviewer from `CODEOWNERS` domain mapping.
3. For experiment/eval changes, include links to inputs and outputs.
4. Merge only when security checks are satisfied.

1. 提交 PR，写清问题、范围、影响目录。
2. 至少指定一位 `CODEOWNERS` 对应评审人。
3. 涉及实验/评估时附输入输出链接。
4. 安全检查通过后方可合并。

## Documentation Lifecycle | 文档生命周期

- `Draft`: early and fast-changing.
- `Validated`: backed by evidence.
- `Adopted`: actively used.
- `Archived`: retired and linked to archive.

- `Draft`：初稿，快速迭代。
- `Validated`：有证据支撑。
- `Adopted`：已被实践采用。
- `Archived`：已停用并归档。

Use this front matter in substantive docs:

```md
Status: Draft
Owner: @team-or-person
Last Reviewed: YYYY-MM-DD
Review Due: YYYY-MM-DD
```

## Minimum Bar Before Merge | 合并前最低标准

- Correct location and naming.
- Links resolve.
- Claims include evidence or are marked as hypotheses.
- Security constraints from `SECURITY.md` are met.

- 位置与命名正确。
- 链接可访问。
- 结论有证据，或明确标注为假设。
- 满足 `SECURITY.md` 安全要求。
