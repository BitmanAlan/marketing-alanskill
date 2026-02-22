---
name: fmcg-trends-visualization
description: 用 Mermaid 将两地快消趋势可视化为「两地平台×品类对比图」与「核心词频 mindmap」。Use when "快消趋势可视化", "Mermaid 两地对比", "FMCG trends diagram", "词频思维导图".
---

# 快消趋势可视化（Mermaid）

基于合并报告或核心词表，用 **Mermaid** 产出两类图：  
1）**两地平台 × 核心快消品类对比图**（graph）；  
2）**核心快消词频 mindmap**（mindmap）。  
可在 Obsidian、GitHub、支持 Mermaid 的编辑器中渲染。

## 何时使用

- 已有「两地快消趋势合并报告」或「两地核心快消词」结构。
- 需要向他人展示地域差异与全局结构，或嵌入报告/笔记。

## 输入

- 合并报告 Markdown（含「两地最核心词」与「核心词频表」），或  
- 单独提供的「海外核心词/平台」「中国核心词/平台」「跨区共性」结构化列表。

## 输出

1. **对比图（graph TB 或 graph LR）**  
   - 子图：海外（平台 → 核心品类/标签）、中国（平台 → 核心品类/标签）。  
   - 子图：两地共性关键词。  
   - 从海外/中国节点指向共性，体现「两地 → 共性」。

2. **Mindmap**  
   - 根节点：如「2026年轻人快消趋势」。  
   - 一级：海外、中国、跨区共性。  
   - 二级及以下：具体品类与标签（与合并报告一致）。

## 有效做法 vs 避免

| 有效做法 | 避免 |
|----------|------|
| 对比图与 mindmap 使用同一套核心词，保证一致 | 图中出现合并报告里没有的词 |
| 节点文字简短（可换行用 \<br/\>），避免过长 | 单节点一整段话 |
| 在报告或文档中注明「可在 Obsidian / GitHub 中渲染」 | 输出裸代码块无说明 |

## 与其他 Skill 的关系

- **上游**：[[fmcg-two-region-report-merge]] 的合并报告；或 [[fmcg-core-keywords-extract]] 的核心词表。  
- **下游**：图可嵌入合并报告，或随 [[obsidian-report-publish-links]] 写入 Obsidian。  
- 可与 [[mermaid-visualizer]] 等通用 Mermaid skill 配合使用。

## References

- [references/mermaid-templates.md](references/mermaid-templates.md) — graph 与 mindmap 模板  
- [references/output-example.md](references/output-example.md) — 输出示例（节选）
