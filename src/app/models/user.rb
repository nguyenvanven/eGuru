class User < ApplicationRecord
  include Clearance::User

  mount_uploader :avatar, AvatarUploader
  has_many :conversations, dependent: :destroy
end
