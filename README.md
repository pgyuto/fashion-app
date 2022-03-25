## users

|Column            |Type  |Options                  |
|------------------|------|-------------------------|
|nickname          |string|null: false              |
|email             |string|null: false, unique: true|
|encrypted_password|string|null: false              |

### Association
has_many :items
has_many :favorites
has_one :money

## items

|Column      |Type      |Options                       |
|------------|----------|------------------------------|
|text        |text      |null: false                   |
|category_id |integer   |null: false                   |
|color_id    |integer   |null: false                   |
|maker       |string    |                              |
|user        |references|null: false, foreign_key: true|
|favorite    |references|null: false, foreign_key: true|

### Association
belongs_to :user
belongs_to :favorite

## favorites

|Column |Type      |Options                       |
|-------|----------|------------------------------|
|user   |references|null: false, foreign_key: true|

### Association
has_many :items
belongs_to :user

## moneys
|Column       |Type      |Options                       |
|-------------|----------|------------------------------|
|balance      |integer   |null: false                   |
|user         |references|null: false, foreign_key: true|

### Association
belongs_to :buy