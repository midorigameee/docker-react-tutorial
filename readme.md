# 目的
VS CodeでDocker動かせるようになりたい。

ついでに[Reactのtutorial](https://ja.react.dev/learn/tutorial-tic-tac-toe)動かしてみたい。

#　DockerをVS Codeで使う
以下の拡張機能をインストールする

- Docker
- Dev Containers

# 作業進捗メモ

##　Reactのコンテナ作成
Docker HubからNode.jsのイメージを持ってきて、イメージをビルドする時に一緒にReactとTypescriptもインストールする設定にした。

##　ナゾ
docker compose up -dでビルドイメージ引っ張ってきてコンテナ起動するとコンテナ名がdocker-react-tutorialになる。どこで指定されているんだ？？
↓
解決した。docker　composeでイメージを作成するとそのイメージのリポジトリ名は作業フォルダ名になるらしい。

#　参考にしているサイト
- Node.jsのコンテナ作成
<https://zenn.dev/boarinclover/articles/a839e8d24ff9c0>
<https://hub.docker.com/_/node/>
<https://docs.docker.jp/engine/examples/nodejs_web_app.html>
<https://qiita.com/bricolageart/items/a509594a5b4c349e90b7>

- VS CodeでDocker起動
<https://qiita.com/75ks/items/b2961e8562c353f42d21>
