class MovieSet < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many_attached :photos
  validates :title, presence: true
  validates :description, presence: true
  validates :media_name, presence: true
  validates :address, presence: true
  geocoded_by :address
  validates :price_per_day, presence: true
  after_validation :geocode, if: :will_save_change_to_address?
end
