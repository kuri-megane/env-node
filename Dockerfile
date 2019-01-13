FROM node:latest
MAINTAINER kuri.megane <kuri.megane3060.4@gmail.com>

# node.js の環境変数
ENV NODE_ENV=dev

# ツールのインストール
RUN npm install -g markdown-pdf
RUN npm install -g gitbook-cli

# 作業ディレクトリ
WORKDIR /app