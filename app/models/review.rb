class Review < ApplicationRecord
  belongs_to :toilet
  belongs_to :user
  validates :content, presence: true
end
