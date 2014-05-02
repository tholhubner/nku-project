class User < ActiveRecord::Base
  has_many :cars
  has_many :blogs
  mount_uploader :avatar, AvatarUploader
end
