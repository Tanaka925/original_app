# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false |
| first_name_kanji   | string | null: false |
| last_name_kanji    | string | null: false |
| first_name_kana    | string | null: false |
| last_name_kana     | string | null: false |
| birthday           | date   | null: false |

### Association

- has_many :arts
- has_many :comments
- has_many :artists

## artists テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| artist_name        | string | null: false |
| birthday           | date   | null: false |
| art                | references | null: false, foreign_key: true |
| user               | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :arts

## arts テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| art_name           | string | null: false |
| work_id            | integer| null: false |
| story              | text   |             |
| artist             | references | null: false, foreign_key: true |
| user               | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :artist
- has_many :comments

## comments テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| content            | text   | null: false |
| art                | references | null: false, foreign_key: true |
| user               | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :art
