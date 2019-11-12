class Image < ApplicationRecord
  belongs_to :toilet
  validates :url, presence: true
  mount_uploader :url, PhotoUploader
end
