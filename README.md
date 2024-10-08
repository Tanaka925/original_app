# アプリケーション名

KOTEN

# アプリケーション概要

我が子の作品を記録しながら、世界に発信することができる。

# URL

[https://original-app-vbtn.onrender.com](https://original-app-vbtn.onrender.com)

# テスト用アカウント

- Basic認証パスワード：admin
- Basic認証：3925
- メールアドレス：test1@ado
- パスワード：Test0001

# 利用方法

## 子どもを作者として登録する

1.トップページ（一覧ページ）のヘッダーからユーザー新規登録を行う

2.ユーザー名をクリックし、マイページに移動する

3.「作者を追加」ボタンからお子様の情報を入力し登録する

## 子どもの作品を記録・世界に発信する

1.一覧ページ右下の「新規投稿」ボタンをクリックして、投稿フォームを開く

2.作品に関する情報を入力し、投稿する

## アプリケーションを作成した背景

ママ友に子育ての課題をヒアリングし、「我が子の作った作品を処理しきれていない」という課題を抱えていることが判明した。課題を分析した結果、「子どもの作品を記録しながら発信できる場がない」ということが真因であると仮説を立てた。同様の課題を抱えている人も多いと推測し、真因を解決するために、子どもの作品を共有しユーザー同士のコミュニケーションを促進できるSNSアプリケーションを開発することにした。

## 洗い出した要件

| 機能（大分類） | 機能（小分類） | 要件 |
| --- | --- | --- |
| ユーザー管理機能（User) | 新規登録 | ・ユーザーを新しく登録できる |
|  | ログイン機能 | ・ユーザー登録が完了している場合、ログインすることができる |
|  |  | ・ログアウトできる |
| 作者管理機能（Artist) | 登録機能 | ・Userに複数のArtist（子ども）を登録することができる
|  |  | ・作者ニックネーム・生年月日を登録することができる |
|  | 一覧機能 | ・登録した子どもを一覧で見ることができる |
|  | 詳細機能 | ・登録した子どもの作品を一覧で見ることができる |
| 作品管理機能（Art） | 投稿機能 | ・画像を投稿することができる
|  |  | ・作品にタイトルをつけることができる
|  |  | ・作者を選択することができる |
|  | 一覧機能 | ・作品を一覧で見ることができる |
|  | 編集機能 | ・自身が投稿した作品は編集することができる |
|  | 削除機能 | ・自身が投稿した作品は削除することができる |
|  | 詳細機能 | ・作品の詳細を見ることができる |
| コメント機能（Comment） | 投稿機能 | ・他のユーザーの作品にコメントすることができる |
|  | 一覧機能 | ・コメントは作品ごとに一覧で見ることができる |

## 実装した機能についての画像やGIFおよびその説明
[![Image from Gyazo](https://i.gyazo.com/7930b96f8c9393b0e8e4ea0af5034a75.jpg)](https://gyazo.com/7930b96f8c9393b0e8e4ea0af5034a75)

## 実装予定の機能

現在、いいね機能を実装中。

今後は以下の機能を実装予定

- 検索機能
- APIの導入

## データベース設計

[![Image from Gyazo](https://i.gyazo.com/972249077e7075bbfb780c51be7cd12f.png)](https://gyazo.com/972249077e7075bbfb780c51be7cd12f)

## 画面遷移図

[![Image from Gyazo](https://i.gyazo.com/f5d695aac688a6c1b1c85e254e453447.png)](https://gyazo.com/f5d695aac688a6c1b1c85e254e453447)

## 開発環境

- フロントエンド
- バックエンド
- インフラ
- テスト
- テキストエディタ
- タスク管理

## ローカルでの動作方法

以下のコマンドを順に実行

％ git clone https://github.com/Tanaka925/original_app.git

% cd original_app

% bundle install

% yarn install

 ## 工夫したポイント

- ユーザーインターフェースのシンプルさと使いやすさを重視しました。
- 子どもの作品を簡単に投稿できるよう、直感的な操作感を重視しました。
- ユーザー同士のコミュニケーションを促進するためのコメント機能を実装しました。