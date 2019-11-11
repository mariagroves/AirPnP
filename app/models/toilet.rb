class Toilet < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_many :bookings
  has_many :users, through: :bookings
end
