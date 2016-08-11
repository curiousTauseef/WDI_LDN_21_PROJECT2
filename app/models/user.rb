class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :first_name, :last_name, :username
  validates_uniqueness_of :username

  mount_uploader :profile_picture, ProfilePictureUploader
  has_many :posts
  has_many :messages
end
