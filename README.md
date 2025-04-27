# 鯖魚的筆記簿

這是一個使用 Hugo 建立的個人筆記簿網站。

## 如何新增頁面

### 1. 新增文章

在終端機中執行以下命令來新增文章：

```bash
hugo new content posts/文章名稱.md
```

這會在 `content/posts` 目錄下創建一個新的 Markdown 文件。

### 2. 編輯文章

打開新創建的文章文件，你會看到以下基本結構：

```markdown
---
title: "文章標題"
date: YYYY-MM-DD
draft: false
tags: ["標籤1", "標籤2"]
---

# 文章標題

你的文章內容...
```

- `title`: 文章標題
- `date`: 發布日期
- `draft`: 是否為草稿（true/false）
- `tags`: 文章標籤

### 3. 新增獨立頁面

要新增像「關於」這樣的獨立頁面，使用：

```bash
hugo new content 頁面名稱.md
```

這會在 `content` 目錄下創建新的頁面。

### 4. 預覽網站

在終端機中執行：

```bash
hugo server -D
```

然後在瀏覽器中訪問 http://localhost:1313 來預覽網站。

### 5. 發布網站

當你準備好發布網站時，執行：

```bash
hugo
```

這會在 `public` 目錄下生成靜態文件。

## 常用指令

- `hugo new content posts/文章名稱.md`: 新增文章
- `hugo new content 頁面名稱.md`: 新增獨立頁面
- `hugo server -D`: 啟動開發伺服器（包含草稿）
- `hugo`: 生成靜態文件

## 目錄結構

- `content/`: 存放所有內容文件
  - `posts/`: 存放文章
  - `about.md`: 關於頁面
- `themes/`: 存放主題文件
- `public/`: 生成的靜態文件
- `hugo.toml`: 網站配置文件

## 注意事項

1. 所有內容文件都使用 Markdown 格式
2. 文件名稱建議使用英文，避免中文文件名
3. 文章標題和標籤可以使用中文
4. 修改完內容後，網站會自動重新生成 