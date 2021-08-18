class User < ApplicationRecord
  has_many :bookings
  has_many :socks
  has_many :bookings_as_owner, through: :socks, source: :bookings
  # has_one_attached :photo

  # validates :username, presence: true
  # validates :username, uniqueness: true
  # validates :location, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
