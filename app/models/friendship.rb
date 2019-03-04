class Friendship < ApplicationRecord
  belongs_to :user
  belongs_to :friend

  validates :start_date, :end_date, presence: true
end
