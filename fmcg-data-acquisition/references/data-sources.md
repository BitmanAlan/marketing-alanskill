# 数据来源说明（海外 / 中国）

## 海外

| 来源 | 说明 | 典型产出 |
|------|------|----------|
| **Apify — TikTok** | Actor：`codebyte/tiktok-trending-hashtags-analytics`；区域、周期、Top100；含 18-24 岁占比、行业、播放量、发布数 | 话题/标签表，筛选快消相关（Pets, Health, Food, Beauty 等） |
| **Apify — Facebook** | Actor：`igview-owner/facebook-old-posts-search`；查询词如「FMCG youth consumer trend 2026」；时间范围 2026-01～02 | 帖子列表，提取与快消/年轻人相关的 # 标签与内容摘要 |
| **凭证** | APIFY_TOKEN 放在项目 `.env` 或环境变量 | 不在报告中明文写出 |

## 中国

| 来源 | 说明 | 典型产出 |
|------|------|----------|
| **今日热榜 API** | https://api.pearktrue.cn/api/dailyhot/ ，公益免费；可获取抖音、B站等当日热榜 | 热榜列表 JSON，筛选快消相关条目后制表 |
| **项目脚本** | 若当前项目内有中国热榜拉取脚本（如 `scripts/fetch_china_hot_lists.py`），可调用；输出 JSON 到当前项目 `output/`，再整理为「中国快消趋势报告」Markdown | 换电脑/新项目时若无脚本，则仅用今日热榜 API |

## 报告输出路径（可移植约定）

- 海外报告：**当前项目根目录**下的 `output/apify_fmcg_trends_YYYY.md`（或用户指定目录）。  
- 中国报告：**当前项目根目录**下的 `output/china_fmcg_trends_YYYY.md`（或用户指定目录）。  
- 原始数据：Apify 控制台 dataset 链接或当前项目内 `output/*.json`，可在报告中注明便于溯源。  
- 在新电脑/新项目使用时，请先建立 `output/` 或自定输出目录，避免写死绝对路径。
