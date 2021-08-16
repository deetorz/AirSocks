class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :sock

  enum status: [ :pending, :confirmed, :rejected ]
  validates :start_date, presence: true
  validates :end_date, presence: true
end
