class Event < ApplicationRecord
  has_many :event_users
  has_many :users, through: :event_users
  has_many :tickets

  validates :title, presence: true
  validates :datetime, presence: true

  mount_uploader :image, ImageUploader
end
