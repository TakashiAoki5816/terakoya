class Event < ApplicationRecord
  belongs_to :user, optional: true
  has_many :participations, foreign_key: "event_id", dependent: :destroy

  validates :title, presence: true
  validates :datetime, presence: true

  mount_uploader :image, ImageUploader

  def self.search(search)
    return Event.all unless search
    Event.where('title LIKE(?)', "%#{search}%")
  end
end
