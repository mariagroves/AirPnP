class Booking < ApplicationRecord
  belongs_to :renter, class_name: 'User'
  belongs_to :toilet

  validates_uniqueness_of :renter_id, scope: :toilet_id
end
