# アプリケーション名
![Movie Review TOP](https://i.gyazo.com/58ab3546da2bf2c86df1ddff64313d42.png)

# アプリケーション概要
映画鑑賞が好きで自分が見た物語のシーンをレビューで書き残すことで映画の内容を思い返すことができたり、他の方が自分のレビューを見ることでどんな映画なのか観てみたい・観たくないを判断できるようにする。

# 制作意図　
①たくさんある映画の中からどんな映画が評価が高く面白いのか。
②今CMで流れている映画は本当に面白いのかわからずあらすじだけでは判断したくない！・人のレビューをみて映画を観にいきたい！
このような２点に着目してこのアプリを作成しました。

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
- ログイン後、映画一覧をクリックすることで映画のタイトルが表示される。 
- アプリの管理者が用意した映画を探すことで自分が見た映画のレビューを書いたり・他の方のレビューをみたりすることができる。
- レビューだけでなく、評価の値がどれだけ面白かったか星を５個までご自身で採点できる。

# 洗い出した要件

|      機能      |               目的               |                       詳細                       |                   ストーリー                  |
| ------------- | -------------------------------- | ----------------------------------------------- | ------------------------------------------ |
| ユーザー管理機能 | 登録されたユーザーのみ使えるようにするため | ニックネーム、email、パスワードを登録させる 　　　　　　　　　　　　　　　　　　　　　　　　　　　　　| 新規登録をします 　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　|
| レビュー機能 　　　　　| 　　　　　　　　　　映画の情報にレビューをするため 　　　　　　　　　　|　　最新の映画の情報に対してのレビューを残せるようにする 　　　　　　　　　　　　　　　| 　　　　映画情報の結果に対してレビューをするべきであるため　|

# 実装した機能
  - ユーザー新規登録機能
    -新規登録の場合
      ![新規登録の場合](https://i.gyazo.com/54ecbe072c562b9ae58756e286112d84.gif)
　　　　　　　　-ログインしたユーザーが映画一覧クリックした際〜映画一覧のコメント一覧へ遷移〜
      ![映画レビュー機能](https://i.gyazo.com/3f86a2fa5a9c481dbe3a2cca3bd783fa.gif)
    -　　![コメントした際](https://i.gyazo.com/e34dccc108a0adf5d0c5521a845c35b5.gif)
  
# 工夫したポイント
  - レビュー入力した情報に星の数を表示させることでおすすめ度がわかるところ
  - レビュー画面をしたことにより、全てのレビュー情報が画面でコメントが確認ができる

# 実装予定の機能
  - 映画のタイトル名だけでなく、映画の表紙も確認できるようにする
  - レビューをした際、いつレビューをした日付なのか確認できるようにすること
  - ユーザーがレビューした関連する映画が検索できるようにすること
  - 自分がレビューした映画のコメント履歴を確認できるようにすること

# データベース設計
### ER図
![database](https://i.gyazo.com/1a8d2a06540fba95462b5c10f8bd911c.png)






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

# 開発環境
- フロントエンド：HTML5/CSS(Bootstrap)/JavaScript
- バックエンド：Ruby on Rails(6.0.0)/Ruby(2.1.4)/JavaScript
- Linter：Rubocop
- データベース：MySQL(5.6.50)/Sequel Pro
- インフラ：Heroku
