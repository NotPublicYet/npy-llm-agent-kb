# Security | 安全规范

This repository is internal and potentially sensitive.
本仓库为内部知识资产，默认按敏感信息处理。

## Data Handling Rules | 数据处理规则

- Do not commit raw confidential datasets.
- Do not commit PII, credentials, or private keys.
- Use sanitized minimal examples for prompts/logs/traces.
- Keep sensitive source data in approved secure systems.

- 禁止提交原始保密数据集。
- 禁止提交 PII、凭据、私钥。
- 提示词、日志、轨迹需使用最小化脱敏样例。
- 敏感源数据仅存放在批准的安全系统中。

## Redaction Requirements | 脱敏要求

Before commit, remove names/emails/phones/account IDs/addresses.
Use stable placeholders like `USER_001`.

提交前需删除姓名、邮箱、电话、账号、地址等标识信息。
使用稳定占位符（如 `USER_001`）替代真实标识。

## Dataset Policy | 数据集策略

Allowed:

- Synthetic datasets.
- Redacted/invented golden sets.
- Aggregated metrics without raw sensitive rows.

Not allowed:

- Raw production exports.
- Full real-customer transcripts.
- Contract-restricted data.

允许：合成数据、脱敏黄金集、聚合指标。
禁止：生产原始导出、真实客户完整对话、合同受限数据。

## Secrets and Credentials | 密钥与凭据

- Never store secrets in repo content.
- Use env vars and approved secret managers.
- If leaked: rotate, clean history, and file incident notes.

- 仓库内禁止存放任何密钥。
- 使用环境变量和企业密钥管理系统。
- 若泄露：立即轮转、清理历史并记录事故复盘。

## Allowed Artifacts | 允许提交的产物

- Experiment configs and code.
- Eval scripts without embedded secrets.
- Scorecards and summary metrics.
- Redacted screenshots without sensitive metadata.

- 实验配置与代码。
- 无内嵌密钥的评估脚本。
- 评分卡与汇总指标。
- 不含敏感元数据的脱敏截图。

## Incident Response | 事件响应

1. Stop distribution.
2. Notify security/owners.
3. Rotate exposed credentials.
4. Remove and rewrite history if required.
5. Capture lessons in `07_insights/postmortems/`.

1. 立即停止传播。
2. 通知安全团队与负责人。
3. 轮转暴露凭据。
4. 必要时清理并重写历史。
5. 在 `07_insights/postmortems/` 记录复盘。
