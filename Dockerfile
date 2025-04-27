FROM node:20-alpine AS builder

# 安裝 Hugo 0.147.0
RUN apk add --no-cache wget
RUN wget https://github.com/gohugoio/hugo/releases/download/v0.147.0/hugo_0.147.0_Linux-64bit.tar.gz && \
    tar -xzf hugo_0.147.0_Linux-64bit.tar.gz && \
    mv hugo /usr/local/bin/ && \
    rm hugo_0.147.0_Linux-64bit.tar.gz

WORKDIR /src
COPY . .

# 構建網站
RUN hugo --minify

# 使用 Nginx 作為 Web 伺服器
FROM nginx:alpine
COPY --from=builder /src/public /usr/share/nginx/html 