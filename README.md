# note review toolとは

note review toolとは、以下Webサービス「note」の投稿記事のレビュー支援ツールです。

https://note.mu/

# 1. 前提条件

OSはWindows10で動作確認済みです。

ツールの実行にはPython3.7以上が必要となります。

また、Pythonの以下ライブラリがインストールされている必要があります。

・BeautifulSoup4

# 2. 使い方

## 2.1 レビュー用HTMLを作成する。【レビューア】

コマンドプロンプトを開き、以下のコマンドでレビュー用HTMLを作成します。

python note-review.py <noteの共有用リンクのURL>

レビュー用HTMLとして以下HTMLファイルが作成されます。

review.html

## 2.2 レビューする。【レビューア】

review.htmlを開き、レビューを行います。
review.html上では自由に編集を行うことができます。

## 2.2 レビュー結果を保存する。【レビューア】

review.htmlの下部にある「保存」を押します。
data.txtというファイルのダウンロードが始まります。
data.txtにはレビュー結果が記載されています。

## 2.3 レビュー結果を共有する。【レビューア】

data.txtをnote投稿者に送付・共有します。

## 2.4 レビュー結果を見る。【レビューイ】

load.htmlというファイル開きます。
load.htmlの下部にある「noteのデータを選択してください。」というところで、
共有されたdata.txtを選択します。
選択すると、レビュー結果が表示されますので、確認します。




以上です。

