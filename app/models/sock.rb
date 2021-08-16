class Sock < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings

  validates :name, presence: true
  validates :description, presence: true
  validates :color, presence: true
  validates :size, presence: true
  validates :size, presence: true, numericality: { only_float: true }
  validates :price, presence: true
  validates :price, numericality: { only_integer: true }
  validates :photo_url, presence: true
  validates :style, presence: true
end
