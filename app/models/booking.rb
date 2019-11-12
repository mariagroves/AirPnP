class Booking < ApplicationRecord
  belongs_to :renter, class_name: 'User'
  belongs_to :toilet

  def owner
    @toilet = self.toilet
    return @toilet.owner
  end
end
