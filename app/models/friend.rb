class Friend < ApplicationRecord
  belongs_to :user
  has_many :photos, dependent: :destroy
  has_many :friendships, dependent: :destroy
  has_many :reviews, through: :friendships, dependent: :destroy

  validates :large_description, :location, :price_per_day, presence: true
  validates :user_id, uniqueness: true
end
