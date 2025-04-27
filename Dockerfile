FROM node:20-alpine AS builder

# 安裝 Hugo
RUN apk add --no-cache hugo

WORKDIR /src
COPY . .

# 構建網站
RUN hugo --minify

# 使用 Nginx 作為 Web 伺服器
FROM nginx:alpine
COPY --from=builder /src/public /usr/share/nginx/html 