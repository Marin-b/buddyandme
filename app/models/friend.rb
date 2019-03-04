class Friend < ApplicationRecord
  belongs_to :user
  has_many :photos
  has_many :friendships
  has_many :reviews, through: :friendships

  validates :large_description, :location, :price_per_day, presence: true
end
