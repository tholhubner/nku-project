class User < ActiveRecord::Base
  has_many :cars
  mount_uploader :avatar, AvatarUploader
end
