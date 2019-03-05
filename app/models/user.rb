class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  mount_uploader :avatar, PhotoUploader
  has_many :friendships, dependent: :destroy
  has_one :friend, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, :last_name, :birth_date, :short_description, presence: true
  validates :language, inclusion: { in: %w(english french dutch spanish italian german japanese) }

end
