# アプリケーション名
![Movie Review TOP](https://i.gyazo.com/58ab3546da2bf2c86df1ddff64313d42.png)

# アプリケーション概要
映画鑑賞が好きで自分が見た物語のシーンをコメントで書き残すことで映画の内容を思い返すことができたり、他の方が自分のコメントを見ることでどんな映画なのかコメントを見ることで観てみたい・観たくないを判断できるようにする。

# URL
-　https://sholovelaravel.herokuapp.com/

# テスト用アカウント
- ユーザー①　　　　(みーさん) 
email : sample@sample.com
password : 111aaa  
- ユーザー②  (ふーさん)
email : sample@123sample.com
password : 111aaa

# 利用方法
- レビュー機能  
- ログイン後、映画一覧をクリックすることで映画のタイトルが表示される。
アプリの管理者が用意した映画を探すことで自分が見た映画のレビューを書いたり・他の方のレビューをみたりすることができる。
コメントだけでなく、評価の値がどれだけ面白かったか星を５個までご自身で採点できる。

# 洗い出した要件

|      機能      |               目的               |                       詳細                       |                   ストーリー                  |
| ------------- | -------------------------------- | ----------------------------------------------- | ------------------------------------------ |
| ユーザー管理機能 | 登録されたユーザーのみ使えるようにするため | ニックネーム、email、パスワードを登録させる 　　　　　　　　　　　　　　　　　　　　　　　　　　　　　| 新規登録をします 　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　|
| コメント機能 　　　　　| 　　　　　　　　　　映画の情報にコメントをするため 　　　　　　　　　　|　　最新の映画の情報に対してのコメントを残せるようにする 　　　　　　　　　　　　　　　| 全ての映画情報の結果に対してコメントをするべきであるため　|

# 実装した機能
  - ユーザー新規登録機能
    - 新規登録の場合
      ![新規登録の場合](https://i.gyazo.com/54ecbe072c562b9ae58756e286112d84.gif)












# README

# DB 設計

## users table

| Column             | Type                | Options                              |
|--------------------|---------------------|--------------------------------------|
| username           | string              | null: false                          |
| email              | string              | unique: true, null: false            |
| encrypted_password | string              | null: false                          |

### Association

belongs_to :review

## movies table

| Column             | Type                | Options                              |
|--------------------|---------------------|--------------------------------------|
| name               | string              | null: false                          |


### Association

belongs_to :review

## rviews table

| Column             | Type                | Options                             |
|--------------------|---------------------|-------------------------------------|
| user_id            | references          | foreign_key: true, null:false       |
| movie_shop_id      | references          | foreign_key: true, null:false       |
| content            | string              |                                     |
| score              | integer             | foreign_key: true, null:false       |

