# 数据获取 — 工作流步骤

## Step 1：确认任务与数据源

- **任务**：例如「2026 年两地年轻人快消趋势」。
- **海外**：使用 Apify（TikTok 趋势、Facebook 搜索等），需 APIFY_TOKEN。
- **中国**：使用今日热榜 API，或当前项目内的中国热榜拉取脚本（若有）。

## Step 2：海外数据拉取（Apify）

- 调用 Apify Skill 或 Apify API，运行对应 Actor。  
  - TikTok：如 `codebyte/tiktok-trending-hashtags-analytics`，区域美国、周期 30 天、Top100。  
  - Facebook：如 `igview-owner/facebook-old-posts-search`，查询词与时间范围与任务一致。
- 从输出中筛选「与快消/年轻人强相关」的话题/标签（行业：Pets, Sports & Outdoor, Health, Food, Beauty 等；或 18-24 岁占比高）。
- 整理为 Markdown 报告：数据时间、工具/Actor、平台与范围、关键词/话题表、说明。保存至**当前项目**的 `output/apify_fmcg_trends_YYYY.md`（或用户指定的输出目录）。

## Step 3：中国数据拉取（今日热榜 / 脚本）

- 调用今日热榜 API（https://api.pearktrue.cn/api/dailyhot/），或执行当前项目内的中国热榜拉取脚本（若有），获取抖音、B站等热榜。
- 从结果中筛选与快消/年轻人相关的热点（美妆、食品、特产、春节、饮料、母婴、零售体验等）。
- 整理为 Markdown 报告：数据时间、数据来源、平台与条数、热点表、说明。保存至**当前项目**的 `output/china_fmcg_trends_YYYY.md`（或用户指定的输出目录）。

## Step 4：输出检查

- [ ] 海外报告存在且含：平台、数据范围、与快消相关的关键词/话题表。  
- [ ] 中国报告存在且含：平台、数据范围、与快消相关的热点表。  
- [ ] 两份报告均注明数据时间与来源，可供下一步「两地报告合并」使用。
