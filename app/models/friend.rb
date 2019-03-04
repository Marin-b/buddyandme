class Friend < ApplicationRecord
  belongs_to :user

  validates :large_description, :location, :price_per_day, presence: true
end
