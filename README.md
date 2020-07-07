## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false, unique: true|
|password|string|null: false|

### Association
- has_many: user_events
- has_many: events through: user_events

## eventsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_many: user_events
- has_many: users throuch: user_events

## user_eventsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|event_id|integer|null: false, foreign_key: true|

### Association
- belongs_to: user_id
- belongs_to: event_id