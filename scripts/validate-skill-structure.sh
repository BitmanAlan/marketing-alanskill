#!/usr/bin/env bash
# 检查 marketing-alanskill 下各 Skill 是否具备 SKILL.md 与 references/
# 用法：在「包含 marketing-alanskill 的目录」下执行，例如：
#   cd /path/to/project && bash marketing-alanskill/scripts/validate-skill-structure.sh
# 或将本脚本与 marketing-alanskill 一起拷贝到任意位置后，在 marketing-alanskill 的上一级目录执行。

set -e
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

SKILLS="fmcg-data-acquisition fmcg-two-region-report-merge fmcg-trends-visualization fmcg-core-keywords-extract fmcg-market-opportunity obsidian-report-publish-links"
OK=0
for s in $SKILLS; do
  if [ -f "$s/SKILL.md" ] && [ -d "$s/references" ]; then
    echo "[OK] $s"
  else
    echo "[MISS] $s (need SKILL.md and references/)"
    OK=1
  fi
done
exit $OK
