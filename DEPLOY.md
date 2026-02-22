# 推送到独立 GitHub 仓库

本目录是一个**独立 Git 仓库**（已 `git init` 并完成首次提交），需推送到你自己的 **新 GitHub 仓库**，而不是 TrendRadar 下面。

## 步骤

### 1. 在 GitHub 上新建一个空仓库

- 打开 https://github.com/new
- **Repository name** 填：`marketing-alanskill`（或你喜欢的名字）
- 选 **Public**
- **不要**勾选 "Add a README"（保持空仓库）
- 点 Create repository

### 2. 在本地添加远程并推送

在**本目录**（`marketing-alanskill-repo`）下执行：

```bash
cd /Users/limingxuan/dev/Trendradar/marketing-alanskill-repo

git remote add origin https://github.com/BitmanAlan/marketing-alanskill.git
git push -u origin main
```

若 GitHub 默认分支是 `master`，则：

```bash
git branch -M master
git remote add origin https://github.com/BitmanAlan/marketing-alanskill.git
git push -u origin master
```

### 3. 确认

打开 **https://github.com/BitmanAlan/marketing-alanskill**，能看到 README 和 6 个子文件夹即表示成功。

---

**可选**：推送成功后，可把本目录移到任意位置（如 `~/dev/marketing-alanskill`），或保留在 Trendradar 项目内；只要保留 `.git`，后续 `git push` 仍会推送到独立仓库。
