# テーブル設計

## usersテーブル
| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false |
| password           | string | null: false |
| last_name          | string | null: false |
| first_name         | string | null: false |
| last_name_kana     | string | null: false |
| first_name_kana    | string | null: false |
| birth_year         | date   | null: false |
| birth_month        | date   | null: false |
| birth_day          | date   | null: false |

### Association
- has_many :comments
- has_many :purchases
- has_many :items

##  itemsテーブル
| Column             | Type    | Options     |
| ------------------ | ------  | ----------- |
| image              |         |             |
| title              | string  | null: false |
| description        | text    | null: false |
| category           | string  | null: false |
| status             |         |             |
| shopping_charges   |         |             |
| shopping_area      |         |             |
| days_to_ship       |         |             |
| price              | integer | null: false |
| user               |         |             |

### Association
- belongs_to :purchases
- belongs_to ;users
- has_many :comments

##  purchasesテーブル
| Column             | Type    | Options     |
| ------------------ | ------  | ----------- |
| card_number        | integer | null: false |
| expiration_month   | integer | null: false |
| expiration_day     | integer | null: false |
| security_code      | integer | null: false |
| postal_code        | integer | null: false |
| prefectures        |         |             |
| city               | string  | null: false |
| address            | string  | null: false |
| building_name      | string  |             |
| phone_number       | integer | null: false |

### Association
- belongs_to :items
- belongs_to :users

##  commentsテーブル
| Column             | Type    | Options     |
| ------------------ | ------  | ----------- |
| text               | text    | null: false |
| user               |         |             |
| item               |         |             |

### Association
- belongs_to :items
- belongs_to :users
