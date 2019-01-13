FROM ubuntu:16.04
MAINTAINER kuri.megane <kuri.megane3060.4@gmail.com>

# apt update
RUN apt update --fix-missing

# set language
RUN apt install -y language-pack-ja
ENV LANG=ja_JP.UTF-8 LC_ALL=ja_JP.UTF-8

# install node packages
RUN apt install nodejs npm -y

# update all other packages
RUN apt upgrade -y

# cache clean
RUN apt clean

# node.js の環境変数
ENV NODE_ENV=dev

# ツールのインストール
RUN npm install -g markdown-pdf
RUN npm install -g gitbook-cli

# 作業ディレクトリ
WORKDIR /app