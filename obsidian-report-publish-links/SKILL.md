---
name: obsidian-report-publish-links
description: 将 Markdown 报告与洞察发布到 Obsidian vault，并建立与既有笔记的双向 wikilink。Use when "放入 Obsidian", "Obsidian 双向链接", "发布到知识库", "vault wikilink".
---

# Obsidian 报告发布与双向链接

将**合并报告**、**市场机会解读**等 Markdown 文档写入指定 Obsidian vault，并在新笔记与既有笔记之间建立 **双向 `[[wikilink]]`**，便于反向链接与图谱检索。

## 何时使用

- 已有合并报告、市场解读等 Markdown 文件，需要纳入个人或团队知识库。  
- 需要让「源报告（海外/中国）」与「合并报告」「机会解读」互相可追溯（双向链接）。

## 输入

- **待发布文档**：合并报告、市场机会解读的 Markdown 内容或路径。  
- **Vault 路径**：Obsidian vault 根目录（如 `obsidian vault/个人IP知识库/`）。  
- **既有笔记**：源报告在 vault 中的笔记名（如「Apify快消趋势报告2026」「中国快消趋势报告2026」），用于建链。

## 输出与动作

1. **在 vault 中创建新笔记**  
   - 文件名与标题一致，如「两地快消趋势合并报告2026」「快消市场机会解读2026」。  
   - 内容为 Markdown，**将路径/标题替换为 Obsidian 内笔记名**，并用 `[[笔记名]]` 链接。

2. **新笔记内的链接**  
   - 合并报告：开头「海外来源」→ `[[Apify快消趋势报告2026]]`，「中国来源」→ `[[中国快消趋势报告2026]]`，「市场机会解读」→ `[[快消市场机会解读2026]]`；文末「报告来源与数据集」中同样用 `[[...]]`。  
   - 机会解读：开头「依据」→ `[[两地快消趋势合并报告2026]]`，「数据范围」→ 链接两地源报告；文末「基于」→ 合并报告。

3. **既有笔记的反向链接**  
   - 在源报告的**附录/数据集索引**或**可延展方向**中，增加一行或一句：指向合并报告与机会解读。  
   - 例如：附录表增加行「两地合并报告 | … | [[两地快消趋势合并报告2026]]」「商业机会解读 | … | [[快消市场机会解读2026]]」；中国报告正文增加「已合并版见 [[两地快消趋势合并报告2026]]，商业机会解读见 [[快消市场机会解读2026]]」。

4. **约定**  
   - 链接使用 Obsidian 标准 `[[笔记名]]`，笔记名与文件名一致（不含 .md）。  
   - 不破坏既有笔记的其它内容，仅追加或表内增加链接。

## 有效做法 vs 避免

| 有效做法 | 避免 |
|----------|------|
| 新笔记与源报告互相引用，形成双向链 | 只在新笔记中链源、源报告不链回新笔记 |
| 链接用 vault 内实际笔记名（与文件名一致） | 链到绝对路径或错误笔记名 |
| 在附录表或「可延展方向」等固定位置加链 | 在长文中散落重复链接 |

## 与其他 Skill 的关系

- **上游**：[[fmcg-two-region-report-merge]]（合并报告）、[[fmcg-market-opportunity]]（机会解读）。  
- **下游**：无（本 Skill 为工作流发布出口）。  
- 可与 [[obsidian-markdown]] 的 wikilink、callout 等语法配合使用。

## References

- [references/wikilink-conventions.md](references/wikilink-conventions.md) — Obsidian 链接约定  
- [references/vault-structure-example.md](references/vault-structure-example.md) — vault 内笔记与链接示例
