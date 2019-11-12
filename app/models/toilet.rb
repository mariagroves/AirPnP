class Toilet < ApplicationRecord
  belongs_to :owner, class_name: 'User'
  has_many :bookings
  has_many :renters, through: :bookings, class_name: 'User'
end
