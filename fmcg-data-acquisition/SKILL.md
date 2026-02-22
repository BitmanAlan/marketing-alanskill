---
name: fmcg-data-acquisition
description: 根据任务调用 Apify skill 或其它 API 接口，获取海外与中国快消趋势原始数据，并产出「海外快消趋势报告」与「中国快消趋势报告」。Use when "拉取快消数据", "调用 Apify", "今日热榜 API", "获取 TikTok 趋势", "获取抖音 B站热榜", "FMCG data fetch".
---

# 快消趋势数据获取（Apify / 其他 API）

**工作流第一步。** 根据任务需求，调用 **Apify skill**（或 Apify API）与 **其他数据接口**（如今日热榜 API、项目脚本），获取海外与中国大陆的社媒/热榜数据，并整理为可被后续步骤消费的 **海外快消趋势报告** 与 **中国快消趋势报告**。没有这两份报告，合并、提取、可视化与解读都无法进行。

## 何时使用

- 需要启动「两地快消趋势」完整工作流，且尚未有现成的海外报告、中国报告。
- 需要更新数据：重新拉取 TikTok/Facebook、抖音/B站 等，产出新一版报告。

## 输入

- **任务目标**：例如「年轻人快消趋势」「FMCG 2026 关键词」。
- **配置**：Apify Token（.env 或环境变量）、今日热榜 API 或项目脚本路径、拉取范围（地区、周期、条数）。

## 输出（必须产出）

1. **海外快消趋势报告**（Markdown 文件）  
   - 至少包含：数据时间、使用工具/Actor、平台（如 TikTok、Facebook）、数据范围（如美国 30 天 Top100）、与快消/年轻人相关的关键词/话题/标签表，及简要说明。  
   - 典型来源：Apify Skill 调用 `codebyte/tiktok-trending-hashtags-analytics`、`igview-owner/facebook-old-posts-search` 等 Actor，整理后写入**当前项目**下的 `output/apify_fmcg_trends_YYYY.md`（或你指定的输出目录）。

2. **中国快消趋势报告**（Markdown 文件）  
   - 至少包含：数据时间、数据来源（如今日热榜 API）、平台（抖音、B站）、数据范围（如当日热榜 50/100 条）、筛出的与快消/年轻人相关的热点表，及简要说明。  
   - 典型来源：今日热榜 API（https://api.pearktrue.cn/api/dailyhot/），或当前项目内的中国热榜拉取脚本（若有），整理后写入**当前项目**下的 `output/china_fmcg_trends_YYYY.md`（或你指定的输出目录）。

3. **可选**：原始数据集路径或链接（如 Apify 控制台 dataset URL、本地 JSON），便于后续复核或扩展。

## 海外侧：Apify 使用要点

- **TikTok 趋势**：Actor 如 `codebyte/tiktok-trending-hashtags-analytics`，参数含区域（如美国）、周期（如 30 天）、结果类型；输出需含话题/标签、播放量、发布数、18-24 岁占比、行业/兴趣等，便于筛选「与快消/年轻人强相关」的关键词。
- **Facebook/其他**：按需选用搜索类 Actor（如 `igview-owner/facebook-old-posts-search`），查询词与时间范围与任务一致；结果整理为「与快消/年轻人相关」的帖子或标签摘要。
- **凭证**：Apify Token 放在 `.env` 或环境变量，不在报告中明文写出。

## 中国侧：其他 API / 脚本要点

- **今日热榜 API**：公益免费，可拉取抖音、B站等当日热榜；返回列表需按「与快消/年轻人相关」筛选并制成表。
- **项目脚本**：若当前项目内有中国热榜拉取脚本（如 `scripts/fetch_china_hot_lists.py`），可调用后把 JSON 整理为「中国快消趋势报告」Markdown；否则直接使用今日热榜 API。输出路径为当前项目下的 `output/` 或用户指定目录。
- 报告中标明数据来源、拉取时间、条数及筛选口径。

## 有效做法 vs 避免

| 有效做法 | 避免 |
|----------|------|
| 先明确「海外用 Apify、中国用今日热榜/脚本」，再执行拉取 | 混用未文档化的接口或临时抓取 |
| 产出统一结构的报告（平台、范围、关键词/热点表、说明） | 只保留原始 JSON 不产出可读报告 |
| 报告中写明数据时间、Actor/API、口径，便于后续合并与溯源 | 不写数据来源与时间，导致合并时口径混乱 |
| 输出路径用「当前项目 output/ 或用户指定目录」 | 写死某台机器的绝对路径，换电脑后不可用 |

## 常见错误（避免这样做）

- **先做合并、再拉数据**：没有两份报告时合并无输入，必须先执行本 Step 产出海外报告与中国报告。  
- **只保存原始 JSON/CSV**：下游合并与解读需要的是 Markdown 报告，需在本步内完成整理。  
- **Token 或 API 未配置就执行**：海外侧需 Apify Token；中国侧可用今日热榜 API（无需 key），或项目内脚本。  
- **在新项目未建 output/ 就写文件**：先确认当前项目根目录并建立 `output/`（或自定目录），再写入报告路径。

## 与其他 Skill 的关系

- **上游**：无（本 Skill 为工作流入口）。  
- **下游**：产出的海外报告 + 中国报告即 [[fmcg-two-region-report-merge]] 的输入；合并后才进行 [[fmcg-core-keywords-extract]]、[[fmcg-trends-visualization]]、[[fmcg-market-opportunity]]、[[obsidian-report-publish-links]]。

## References

- [references/workflow.md](references/workflow.md) — 海外/中国拉取步骤与检查清单  
- [references/data-sources.md](references/data-sources.md) — Apify Actor 与 API 来源说明  
