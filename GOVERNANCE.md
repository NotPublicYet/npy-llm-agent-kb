# Governance | 治理规范

## Ownership Model | 归属模型

- Each top-level domain has a primary owner and a backup owner.
- Owners are responsible for quality, triage, and review cadence.
- Ownership mappings are maintained in `CODEOWNERS`.

- 每个一级目录配置主负责人和备份负责人。
- 负责人对质量、分诊和评审节奏负责。
- 归属映射维护在 `CODEOWNERS`。

## Review Cadence | 复审节奏

- Foundation (`00_foundation/`): monthly.
- Patterns and playbooks (`02_patterns/`, `05_playbooks/`): every 2 weeks.
- Evals (`04_evals/`): monthly or on major model/tool changes.
- Security policy (`SECURITY.md`): quarterly and post-incident.

- 基础层：每月复审。
- 模式与手册：每两周复审。
- 评估体系：每月或重大模型/工具变更后复审。
- 安全策略：每季度及事故后复审。

## Archiving Rules | 归档规则

Move content to `99_archive/` when:

- It is superseded by validated guidance.
- It no longer reflects supported tooling/process.
- It is overdue for review by 30+ days.

归档条件：

- 已被更新且验证过的内容替代。
- 已不适配当前工具链或流程。
- 超过复审截止 30 天以上。

Archived items must include reason, replacement link (if any), date, and owner.

归档条目必须包含：原因、替代链接（如有）、日期、负责人。

## Inbox Rules | 收件箱规则

- Anything in `90_inbox/` must be triaged within 7 days.
- Outcomes: route, request context, or archive as non-actionable.
- Items older than 7 days are governance violations.

- `90_inbox/` 内所有内容必须在 7 天内分诊。
- 分诊结果：转入正式目录、补充信息、或归档为不可执行。
- 超过 7 天未处理视为治理违规。

## Decision Logging | 决策记录

Log major changes in `07_insights/weekly-notes/` with date, decision, and rationale.

重大流程或标准变更需记录到 `07_insights/weekly-notes/`，包含日期、决策、理由。
