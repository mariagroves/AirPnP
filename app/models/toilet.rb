class Toilet < ApplicationRecord
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  belongs_to :owner, class_name: 'User'
  has_many :bookings
  has_many :renters, through: :bookings, class_name: 'User'
  has_many :images
  validates :title, presence: true
  validates :description, presence: true
  validates :location, presence: true
  validates :address, presence: true
end
