# アプリケーション名
![Movie Review TOP](https://i.gyazo.com/58ab3546da2bf2c86df1ddff64313d42.png)















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

