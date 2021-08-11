# テーブル設計

## usersテーブル
| Column                       | Type   | Options                   |
| ---------------------------- | ------ | ------------------------- |
| nickname                     | string | null: false               |
| email                        | string | null: false, unique: true |
| encrypted_password           | string | null: false               |
| last_name                    | string | null: false               |
| first_name                   | string | null: false               |
| last_name_kana               | string | null: false               |
| first_name_kana              | string | null: false               |
| birth_date                   | date   | null: false               |

### Association
- has_many :purchase_managements
- has_many :items

##  itemsテーブル
| Column                | Type       | Options           |
| --------------------- | ---------- | ----------------- |
| title                 | string     | null: false       |
| description           | text       | null: false       |
| category_id           | integer    | null: false       |
| status_id             | integer    | null: false       |
| shopping_charges_id   | integer    | null: false       |
| shopping_area_id      | integer    | null: false       |
| days_to_ship_id       | integer    | null: false       |
| price                 | integer    | null: false       |
| user                  | references | foreign_key: true |

### Association
- has_one :purchase_management
- belongs_to :user

##  purchasesテーブル
| Column                 | Type       | Options           |
| ---------------------- | ---------- | ----------------- |
| postal_code            | string     | null: false       |
| shopping_area_id       | integer    | null: false       |
| city                   | string     | null: false       |
| address                | string     | null: false       |
| building_name          | string     |                   |
| phone_number           | string     | null: false       |
| purchase_management    | references | foreign_key: true |

### Association
- belongs_to :purchase_management


## purchase_managementsテーブル
| Column  | Type       | Options           |
|---------|------------|-------------------|
| item    | references | foreign_key: true |
| user    | references | foreign_key: true |

### Association
- has_one :purchase
- belong_to :user
- belong_to :item
