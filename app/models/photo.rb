class Photo < ApplicationRecord
  belongs_to :friend
  mount_uploader :picture, PhotoUploader

  validates :picture
end
