class Photo < ApplicationRecord
  belongs_to :friend

  validates :picture
end
