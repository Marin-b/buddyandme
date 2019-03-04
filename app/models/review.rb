class Review < ApplicationRecord
  belongs_to :friendship

  validates :rating, :description, presence: true
end
