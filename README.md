## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false, unique: true|
|password|string|null: false|

### Association
- has_many :user_events
- has_many :events, through: :event_users

## eventsテーブル

|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|datetime|time|null: false|
|image|string|
|content|text|
|tag|string|

### Association
- has_many :event_users
- has_many :users, throuch: :event_users

## event_usersテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|foreign_key|null: false, foreign_key: true|
|event_id|foreign_key|null: false, foreign_key: true|

### Association
- belongs_to :user_id
- belongs_to :event_id
