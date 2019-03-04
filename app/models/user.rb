class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :friendships
  has_one :friend
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, :last_name, :birth_date, :short_description, presence: true
  validates :language, inclusion: { in: %w(english french dutch spanish italian german japanese) }

end
