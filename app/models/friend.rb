class Friend < ApplicationRecord
  geocoded_by :location
  belongs_to :user
  has_many :photos, dependent: :destroy
  has_many :friendships, dependent: :destroy
  has_many :reviews, through: :friendships, dependent: :destroy

  validates :large_description, :location, :price_per_hour, presence: true
  validates :user_id, uniqueness: true
  validates :price_per_hour, :numericality => { :greater_than_or_equal_to => 0 }
  after_validation :geocode
end
