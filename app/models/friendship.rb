class Friendship < ApplicationRecord
  belongs_to :user
  belongs_to :friend
  has_one :review

  validates :start_date, :end_date, :start_hour, :end_hour, presence: true
end
