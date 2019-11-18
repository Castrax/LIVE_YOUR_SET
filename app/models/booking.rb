class Booking < ApplicationRecord
  STATUS = ["upcoming", "past"]
  belongs_to :user
  belongs_to :movie_set
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :status, inclusion: { in: STATUS }
end
