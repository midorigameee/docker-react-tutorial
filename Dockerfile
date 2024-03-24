# https://qiita.com/f-paico/items/9f0d3110085ef6277a48
# M1 MacのみFROMの記述が必要
FROM --platform=linux/amd64 node:lts-slim

# RUNコマンドは、コンテナ作成時に自動で実行するコマンドを指定
RUN apt update -y
RUN apt install -y sudo git curl vim

# Reactのインストール
RUN npm install -g create-react-app
RUN npm install -g typescript

# fogeというユーザを作成、fogefogeというPWを設定
# RUN useradd -m -s /bin/bash foge
# RUN echo "foge:fogefoge" | chpasswd
# sudoでroot権限のコマンドを実行できるように指定
# RUN gpasswd -a foge sudo

# コンテナを指定したユーザで実行（rootユーザ以外で実行したい）
# USER foge

# ワークディレクトリを設定
# WORKDIR /home/foge/
WORKDIR /usr/