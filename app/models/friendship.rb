class Friendship < ApplicationRecord
  belongs_to :user
  belongs_to :friend
  has_one :review

  validates :start_date, :end_date, presence: true
end
