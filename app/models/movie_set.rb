class MovieSet < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many_attached :photos
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :media_name, presence: true
  validates :address, presence: true
  validates :price_per_day, presence: true
end
