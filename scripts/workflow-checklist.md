# 两地快消工作流 — 端到端执行检查清单

按顺序执行并打勾。

## Step 1：数据获取（fmcg-data-acquisition）※ 关键第一步

- [ ] 根据任务确定数据源：海外用 Apify（TikTok/Facebook），中国用今日热榜 API 或项目脚本
- [ ] 调用 Apify skill 或 Apify API，拉取海外数据（如 TikTok 美国 30 天 Top100、Facebook 搜索），整理为 **海外快消趋势报告**（含平台、范围、与快消相关的关键词/话题表）
- [ ] 调用今日热榜 API 或执行 `scripts/fetch_china_hot_lists.py`，拉取抖音/B站热榜，整理为 **中国快消趋势报告**（含平台、范围、与快消相关的热点表）
- [ ] 海外报告保存至**当前项目**的 `output/apify_fmcg_trends_YYYY.md`（或自定输出目录），中国报告同理
- [ ] 两份报告均注明数据时间与来源

## 输入准备（报告就绪后）

- [ ] 海外快消趋势报告就绪（平台、数据范围、关键词/话题）
- [ ] 中国快消趋势报告就绪（同上）
- [ ] 若需 Obsidian 发布：vault 路径确认（如 `obsidian vault/个人IP知识库/`）、源报告在 vault 中的笔记名确认（如 Apify快消趋势报告2026、中国快消趋势报告2026）

## Step 2：两地报告合并（fmcg-two-region-report-merge）

- [ ] 产出「两地平台与数据范围总览表」
- [ ] 产出「核心快消词频表（两地对照）」
- [ ] 产出「两地最核心 5 类词」+ 跨区共性
- [ ] 写明报告来源与数据集（含后续解读文档链接）

## Step 3：核心词频提取（fmcg-core-keywords-extract）

- [ ] 若与合并同步，本步可省略；否则从两地报告单独产出核心词表与最核心 N 类词
- [ ] 词表与合并报告中的品类维度一致

## Step 4：可视化（fmcg-trends-visualization）

- [ ] 产出「两地平台×核心快消品类」Mermaid 对比图
- [ ] 产出「核心快消词频」Mermaid mindmap
- [ ] 图已嵌入合并报告或单独文件，并注明可渲染环境（Obsidian/GitHub）

## Step 5：市场机会解读（fmcg-market-opportunity）

- [ ] 产出「核心词频与信号归纳」摘要
- [ ] 产出「品类机会」高/中优先级 + 娱乐借势
- [ ] 产出「卖点/痛点」与「内容模板」「可执行清单」
- [ ] 产出「过程与结果度量建议」
- [ ] 清单含优先级（P0/P1/P2）与责任人建议

## Step 6：Obsidian 发布与双向链接（obsidian-report-publish-links）

- [ ] 在 vault 中创建「两地快消趋势合并报告2026」笔记，内容中的链接使用 `[[笔记名]]`
- [ ] 在 vault 中创建「快消市场机会解读2026」笔记，并链接合并报告与两地源报告
- [ ] 在 Apify 报告附录表增加「两地合并报告」「商业机会解读」两行链接
- [ ] 在中国报告正文（如可延展方向）增加对合并报告与解读的链接
- [ ] 在 Obsidian 中验证：打开任一篇，反向链接面板能看到其它笔记

## 收尾

- [ ] 合并报告与机会解读的源文件（当前项目 `output/` 下）与 vault 内笔记一致或已说明差异
- [ ] 需要时更新 task_plan.md / findings.md / progress.md
