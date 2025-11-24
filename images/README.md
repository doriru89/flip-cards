# 图片文件说明

## 问题说明

在 Render 部署的网站上，卡牌图片无法显示是因为外部图片服务（Fandom Wiki、pngtree等）阻止了热链接（hotlinking）。

## 解决方案

将图片文件添加到 GitHub 仓库，通过 GitHub 的 raw content CDN 提供服务。

## 需要的图片文件

请将以下图片文件添加到 `images` 文件夹中：

1. **background.jpg** - 页面背景图（食物涂鸦框）
2. **card-back.jpg** - 卡牌背面图案（塔罗牌背面风格）
3. **magician.png** - 魔术师塔罗牌图片
4. **priestess.png** - 女祭司塔罗牌图片
5. **empress.png** - 女皇塔罗牌图片

## 如何添加图片

### 方法1：从原始URL下载（推荐）

原始图片URL：
- 背景图：`https://img.freepik.com/free-vector/food-doodle-frame-beige-background-vector_53876-167977.jpg?semt=ais_hybrid&w=740&q=80`
- 卡牌背面：`https://png.pngtree.com/thumb_back/fh260/background/20210908/pngtree-mystical-bohemian-tarot-card-with-moon-decorative-image_779769.jpg`
- 魔术师：`https://static.wikia.nocookie.net/bubble-bobble/images/9/9c/The_Magician.png/revision/latest?cb=20161204113417`
- 女祭司：`https://static.wikia.nocookie.net/bubble-bobble/images/8/88/The_High_Priestess.png/revision/latest?cb=20161204113442`
- 女皇：`https://static.wikia.nocookie.net/bubble-bobble/images/3/39/The_Empress.png/revision/latest?cb=20161204113457`

1. 在浏览器中打开上述URL，右键保存图片
2. 将图片重命名为对应的文件名
3. 将文件放入 `images` 文件夹
4. 使用 Git 提交并推送：
   ```bash
   git add images/
   git commit -m "Add card images for Render deployment"
   git push
   ```

### 方法2：使用自己的图片

1. 准备符合要求的图片文件
2. 将文件放入 `images` 文件夹
3. 使用 Git 提交并推送

## 图片要求

- 格式：JPG（背景和卡牌背面）或 PNG（塔罗牌）
- 建议尺寸：
  - 背景图：至少 740x740 像素
  - 卡牌图片：至少 200x300 像素
- 文件大小：尽量压缩以加快加载速度

## 验证

图片上传后，URL格式为：
- `https://raw.githubusercontent.com/doriru89/flip-cards/main/images/文件名`

这些URL会自动通过 GitHub 的 CDN 提供服务，在 Render 部署的网站上可以正常显示。

