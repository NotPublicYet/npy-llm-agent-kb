# Glossary | 术语表

> Scope: must-know terms for LLM/Agent practice, as of 2026-02-21.  
> 范围：截至 2026-02-21，LLM/Agent 实践中应掌握的高频术语。

## A. Foundation Models | 基础模型

- LLM (Large Language Model): text-centric generative model trained on large corpora.  
  大语言模型：在大规模语料上训练的文本生成模型。
- Multimodal Model: model handling text plus image/audio/video inputs or outputs.  
  多模态模型：可处理文本与图像/音频/视频等多种模态。
- Reasoning Model: model optimized for multi-step inference and harder tasks.  
  推理模型：在多步推断和复杂任务上强化的模型。
- Context Window: maximum tokens the model can attend to in one request.  
  上下文窗口：单次请求可被模型关注的最大 token 数。
- Tokens: subword units used for pricing, limits, and latency.  
  Token：计费、时延和上下文容量的基础单位。
- Embedding: dense vector representation for semantic retrieval/matching.  
  向量嵌入：用于语义检索与匹配的稠密向量表示。
- Reranker: model that reorders retrieved candidates by relevance.  
  重排器：对召回结果进行相关性重排序的模型。
- SLM (Small Language Model): compact model for lower-latency/cost workloads.  
  小语言模型：面向低时延、低成本场景的轻量模型。
- MoE (Mixture of Experts): sparse architecture activating subsets of experts.  
  专家混合：按需激活部分专家网络的稀疏架构。
- Distillation: transferring behavior from larger teacher to smaller student.  
  蒸馏：将大模型能力迁移到小模型。
- Fine-tuning: task/domain adaptation via additional training.  
  微调：通过增量训练适配任务或领域。
- SFT (Supervised Fine-Tuning): fine-tuning with labeled instruction-response data.  
  监督微调：用标注的指令-回复样本训练。
- RLHF / RLAIF: preference optimization from human/AI feedback.  
  人类反馈强化学习 / AI 反馈强化学习：基于偏好反馈对齐模型行为。
- DPO (Direct Preference Optimization): direct objective for preference learning.  
  直接偏好优化：无需传统 RL 管线的偏好学习方法。
- LoRA / QLoRA: parameter-efficient fine-tuning techniques.  
  LoRA / QLoRA：参数高效微调技术。

## B. Prompting and Context | 提示与上下文

- System Prompt: highest-priority behavior and policy instruction layer.  
  系统提示词：定义行为边界与策略的高优先级指令层。
- User Prompt: user-provided task input and constraints.  
  用户提示词：用户任务输入与约束。
- Prompt Template: reusable prompt structure with variable slots.  
  提示模板：带变量槽位的可复用提示结构。
- Prompt Versioning: tracked iterations of prompt changes.  
  提示词版本化：对提示变更做可追踪迭代。
- Few-shot Prompting: in-context examples to steer behavior.  
  少样本提示：通过示例引导输出模式。
- Zero-shot Prompting: direct instruction without examples.  
  零样本提示：不提供示例直接下指令。
- Chain-of-Thought (CoT): explicit intermediate reasoning steps.  
  思维链：显式中间推理步骤。
- Self-Consistency: sample multiple reasoning paths and vote/select.  
  自一致性：多路径采样后投票或选择最佳结果。
- ReAct: interleaving reasoning and actions/tool calls.  
  ReAct：推理与行动（工具调用）交替进行。
- Structured Output: enforcing JSON/schema-conformant outputs.  
  结构化输出：强制模型按 JSON/Schema 输出。
- Function/Tool Calling: model emits executable tool invocation arguments.  
  函数/工具调用：模型输出可执行的工具参数。
- Grounding: anchoring outputs to trusted evidence/context.  
  事实锚定：基于可信上下文生成回答。
- Hallucination: plausible but unsupported or false model output.  
  幻觉：看似合理但缺乏依据或错误的输出。
- Prompt Injection: malicious instructions hidden in input/content.  
  提示注入：输入内容中的恶意指令污染。
- Context Poisoning: contaminated retrieved context causing bad decisions.  
  上下文投毒：被污染的上下文导致错误行为。
- Prompt Chaining: linking multiple prompts into a staged workflow.  
  提示链：将多个提示步骤串联为阶段化流程。

## C. Retrieval and Knowledge | 检索与知识

- RAG (Retrieval-Augmented Generation): retrieval + generation pipeline.  
  检索增强生成：先检索后生成的增强流程。
- Corpus: full document collection used for indexing/retrieval.  
  语料库：用于索引与检索的文档全集。
- Chunking: splitting documents into retrievable segments.  
  分块：将文档切分为可检索片段。
- Chunk Overlap: shared tokens between adjacent chunks.  
  分块重叠：相邻分块共享内容比例。
- Top-k Retrieval: selecting k most similar candidates.  
  Top-k 检索：取前 k 个相似候选。
- Hybrid Search: lexical + vector retrieval combination.  
  混合检索：关键词检索与向量检索结合。
- BM25: classic lexical ranking algorithm.  
  BM25：经典关键词排序算法。
- ANN (Approximate Nearest Neighbor): scalable vector search method.  
  近似最近邻：高性能向量检索方法。
- Vector DB: system optimized for embedding storage/search.  
  向量数据库：针对向量存储与检索优化的系统。
- Knowledge Cutoff: latest training-time knowledge boundary of a model.  
  知识截止：模型训练知识覆盖的时间上限。
- Citation/Attribution: linking claims to source evidence.  
  引用/归因：将结论映射到证据来源。
- Resource (MCP): server-provided structured context/data attached by clients.  
  资源（MCP）：由服务器提供、客户端附加给模型的结构化上下文数据。

## D. Agent and Orchestration | Agent 与编排

- Agent: LLM-driven system that plans and/or executes actions with tools.  
  Agent：由 LLM 驱动、可规划并调用工具执行任务的系统。
- Agent Loop: iterative observe-plan-act cycle.  
  Agent 循环：观察-规划-执行的迭代闭环。
- Planner: component deciding subgoals and execution order.  
  规划器：负责子目标拆解与步骤排序。
- Executor: component executing planned actions/tools.  
  执行器：负责执行动作与工具调用。
- Router: component selecting model/tool/workflow path.  
  路由器：选择模型、工具或工作流分支。
- Multi-Agent: cooperating specialized agents for complex tasks.  
  多智能体：多个专长 Agent 协作完成复杂任务。
- Workflow Engine: deterministic orchestration with state transitions.  
  工作流引擎：带状态流转的确定性编排系统。
- State Store: persisted task/session memory and checkpoints.  
  状态存储：持久化任务状态与检查点。
- Checkpointing: saving resumable execution snapshots.  
  检查点：保存可恢复执行快照。
- HITL (Human-in-the-Loop): human review/approval in critical steps.  
  人在回路：关键环节引入人工审批或校正。
- Tool: external capability callable by model or orchestrator.  
  Tool：可被模型或编排器调用的外部能力。
- MCP (Model Context Protocol): protocol for standardized tool/context exposure.  
  MCP：标准化暴露工具与上下文的协议。
- MCP Server: service exposing tools/resources/prompts over MCP.  
  MCP 服务端：通过 MCP 暴露工具、资源、提示模板的服务。
- MCP Client: host application that connects to MCP servers and routes calls.  
  MCP 客户端：连接 MCP 服务端并路由调用的宿主应用。
- Skill: reusable instruction/workflow package for a recurring task.  
  Skill：面向重复任务的可复用指令与工作流包。
- Skill Pack: versioned bundle of one or more related skills.  
  Skill 包：一个或多个相关 Skill 的版本化集合。
- Skill Registry: indexed catalog for discovering available skills.  
  Skill 注册表：用于发现可用 Skill 的索引目录。
- Skill Installer: mechanism/tooling to install skills into local runtime.  
  Skill 安装器：将 Skill 安装到本地运行环境的机制或工具。
- Skill Invocation: explicit triggering of a skill by name or routing logic.  
  Skill 调用：按名称或路由规则显式触发 Skill。
- A2A (Agent-to-Agent): protocol/pattern for inter-agent communication.  
  A2A：Agent 间通信协作协议/模式。
- Agent Card (A2A): machine-readable capability descriptor for agent discovery.  
  Agent Card（A2A）：用于能力发现的机器可读能力描述。
- Capability Discovery: mechanism for finding suitable tools/agents by capabilities.  
  能力发现：根据能力描述查找可用工具或 Agent 的机制。
- Task (A2A): unit of delegated work exchanged between agents.  
  任务（A2A）：Agent 间委派与协作的工作单元。
- Artifact (A2A): persistent output generated during/after task execution.  
  产物（A2A）：任务执行过程中或结束后生成的可持久化结果。
- Idempotency: repeated action yields same safe end state.  
  幂等性：重复执行不会造成额外副作用。

## E. Evaluation and Quality | 评估与质量

- Eval: controlled procedure measuring model/agent behavior.  
  评估：在受控条件下测量模型或 Agent 表现。
- Eval Harness: test runner for comparable eval scenarios.  
  评估执行器：用于可比场景测试的运行框架。
- Benchmark: fixed task suite for longitudinal comparison.  
  基准：可长期横向对比的固定任务集。
- Golden Set: stable trusted set for regression tracking.  
  黄金集：用于回归监控的稳定可信数据集。
- Synthetic Set: generated set expanding coverage and edge cases.  
  合成集：用于扩展覆盖面和边界案例的生成数据集。
- Baseline: reference system/version for comparison.  
  基线：比较参考的系统或版本。
- Ablation: remove/alter one factor to isolate impact.  
  消融实验：去掉单一因素验证其影响。
- A/B Test: compare two variants under controlled allocation.  
  A/B 测试：受控分流比较两种方案。
- Offline Eval: evaluation without live users/traffic.  
  离线评估：不依赖线上流量的测试。
- Online Eval: production-traffic evaluation with guardrails.  
  在线评估：带护栏的线上流量评估。
- Rubric: explicit qualitative scoring criteria.  
  Rubric：定性评价的显式评分标准。
- Scorecard: standardized report of metrics and pass/fail decisions.  
  评分卡：标准化指标结果与通过判定报告。
- Success Rate / Task Completion: percentage meeting acceptance criteria.  
  成功率/任务完成率：满足验收标准的比例。
- Latency (p50/p95/p99): response-time distribution percentiles.  
  时延分位数：响应时间分布统计。
- Cost per Success: cost normalized by successful outcomes.  
  单次成功成本：按成功结果归一化成本。
- Regression: quality drop versus baseline.  
  回归：相对基线的质量下降。

## F. Safety, Security, Compliance | 安全与合规

- Safety Policy: behavioral constraints for harmful-risk control.  
  安全策略：约束高风险有害行为的规则。
- Guardrail: pre/post checks enforcing policy and quality boundaries.  
  护栏：前后置检查机制，约束行为边界。
- PII (Personally Identifiable Information): personally identifying data.  
  个人可识别信息：可直接或间接识别个人的数据。
- Data Classification: labeling data sensitivity levels.  
  数据分级：定义数据敏感等级。
- Redaction: removing or masking sensitive fields.  
  脱敏：删除或遮蔽敏感字段。
- Data Minimization: use least data needed for task completion.  
  数据最小化：仅使用完成任务所需最少数据。
- Least Privilege: minimal permissions for tools/agents/services.  
  最小权限：仅授予必要权限。
- Secret Management: secure handling of API keys/tokens/credentials.  
  密钥管理：安全管理 API Key、令牌和凭据。
- Audit Trail: immutable logs for accountability and forensics.  
  审计轨迹：可追责、可取证的日志链路。
- Policy Violation: output or action breaching defined rules.  
  策略违规：输出或行为违反既定规则。
- Jailbreak: adversarial attempt to bypass safeguards.  
  越狱：绕过安全限制的对抗尝试。

## G. Engineering and Ops | 工程与运维

- Inference: model execution for response generation.  
  推理：模型执行并生成输出的过程。
- Throughput: requests/tokens processed per unit time.  
  吞吐：单位时间处理请求或 token 的能力。
- Rate Limit: provider-enforced request/token ceilings.  
  速率限制：供应商设置的请求/令牌上限。
- Retry Policy: controlled retries with backoff and stop conditions.  
  重试策略：含退避与终止条件的重试机制。
- Timeout: max wait time before failing a call.  
  超时：调用等待的最大时长。
- Circuit Breaker: temporary cut-off on repeated downstream failures.  
  熔断：下游持续故障时的保护性断路机制。
- Caching: storing reusable outputs to reduce latency/cost.  
  缓存：复用结果以降低时延与成本。
- Determinism: reproducibility under fixed inputs/settings/seeds.  
  确定性：在固定输入和参数下复现结果。
- Observability: logs, metrics, traces for system introspection.  
  可观测性：日志、指标、链路追踪能力。
- Tracing: end-to-end execution timeline of model/tool calls.  
  链路追踪：请求全流程的时序记录。
- SLA / SLO / SLI: service contract, objective, and indicator.  
  SLA / SLO / SLI：服务协议、目标与指标。
- Drift: distribution/performance shift over time.  
  漂移：数据分布或效果随时间变化。
- JSON-RPC: message protocol commonly used by MCP transports.  
  JSON-RPC：MCP 常用的消息协议格式。
- Capability Negotiation: client/server agreement on supported protocol features.  
  能力协商：客户端与服务端确认可用协议能力的过程。
- Lifecycle Management: initialization, session control, and orderly shutdown handling.  
  生命周期管理：初始化、会话控制与有序关闭机制。
- Sampling (MCP Client Feature): client-provided model interaction capability for servers.  
  采样（MCP 客户端能力）：客户端向服务器暴露的模型交互能力。

## H. Product and Organizational Learning | 产品与组织学习

- Use Case: concrete user problem and target workflow.  
  用例：具体用户问题与目标流程。
- JTBD (Jobs To Be Done): user intent framed as jobs and outcomes.  
  待完成任务理论：从用户任务与结果定义需求。
- PRD: product requirements with scope and acceptance criteria.  
  产品需求文档：定义范围与验收标准。
- Runbook: operational steps for repeatable execution.  
  运行手册：可重复执行的操作步骤。
- Playbook: codified best practices for teams.  
  实践手册：团队可复用的最佳实践集合。
- Postmortem: incident/experiment retrospective with root causes.  
  复盘：对事故或实验进行根因分析与改进。
- ADR (Architecture Decision Record): concise architecture decision log.  
  架构决策记录：简明记录关键技术决策。
- North Star Metric: primary metric reflecting long-term value creation.  
  北极星指标：反映长期价值的核心指标。
- Knowledge Base (KB): structured repository of reusable organizational knowledge.  
  知识库：结构化沉淀可复用组织知识的仓库。
- Inbox Triage: deadline-based routing of raw inputs to durable artifacts.  
  收件箱分诊：将原始输入按时转化为可沉淀产物的流程。
