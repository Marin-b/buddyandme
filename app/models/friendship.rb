class Friendship < ApplicationRecord
  belongs_to :user
  belongs_to :friend
  has_one :review,  dependent: :destroy

  validates :start_date, :end_date, :start_hour, :end_hour, presence: true

  def confirm
    self.status = "Accepted"
    self.save
  end

  def decline
    self.status = "Declined"
    self.save
  end

  def start_datetime
    self.start_hour.to_s + ":00 - " + self.start_date.to_s
  end

  def end_datetime
    self.end_hour.to_s + ":00 - " + self.end_date.to_s
  end
end
