class Toilet < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  belongs_to :owner, class_name: 'User'
  has_many :bookings, dependent: :destroy
  has_many :renters, through: :bookings, class_name: 'User'
  has_many :images, dependent: :destroy
  validates :title, presence: true
  validates :description, presence: true
  validates :location, presence: true
  validates :address, presence: true
end
