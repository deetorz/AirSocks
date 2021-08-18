class Sock < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :users_as_owner, through: :bookings
  has_one_attached :photo

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :name, presence: true
  validates :description, presence: true
  validates :color, presence: true
  validates :size, presence: true
  validates :size, presence: true, numericality: { only_float: true }
  validates :price, presence: true
  validates :price, numericality: { only_integer: true }
  validates :photo, presence: true
  validates :style, presence: true
end
