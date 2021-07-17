# テーブル設計

## usersテーブル
| Column                       | Type   | Options     |
| ---------------------------- | ------ | ----------- |
| nickname                     | string | null: false |
| email                        | string | null: false |
| encrypted_password           | string | null: false |
| last_name                    | string | null: false |
| first_name                   | string | null: false |
| last_name_kana               | string | null: false |
| first_name_kana              | string | null: false |
| birthday                     | date   | null: false |

### Association
- has_many :purchases
- has_many :items

##  itemsテーブル
| Column             | Type       | Options     |
| ------------------ | ---------- | ----------- |
| title              | string     | null: false |
| description        | text       | null: false |
| category           | integer    | null: false |
| status             | integer    | null: false |
| shopping_charges   | integer    | null: false |
| shopping_area      | integer    | null: false |
| days_to_ship       | integer    | null: false |
| price              | integer    | null: false |
| user               | references | null: false |

### Association
- has_one :purchase
- belongs_to ;user

##  purchasesテーブル
| Column             | Type    | Options     |
| ------------------ | ------- | ----------- |
| postal_code        | string  | null: false |
| prefectures        | integer | null: false |
| city               | string  | null: false |
| address            | string  | null: false |
| building_name      | string  |             |
| phone_number       | string  | null: false |

### Association
- has_one :purchase_management


## purchase_managementsテーブル
| Column  | Type    | Options           |
|---------|---------|-------------------|
| item_id | integer | foreign_key: true |
| user_id | integer | foreign_key: true |

### Association
- has_one :purchase
- has_one :item

