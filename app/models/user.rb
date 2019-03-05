class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  mount_uploader :avatar, PhotoUploader
  has_many :friendships, dependent: :destroy
  has_one :friend, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # validates :first_name, :last_name, :birth_date, :short_description, presence: true
  # validates :language, inclusion: { in: %w(english french dutch spanish italian german japanese) }
  after_create :assign_avatar

  def assign_avatar
    if self.avatar.filename.nil?
      self.remote_avatar_url = "https://res.cloudinary.com/dwg18rj8x/image/upload/v1551787049/240_F_215844325_ttX9YiIIyeaR7Ne6EaLLjMAmy4GvPC69.jpg"
      self.save!
    end
  end
end

