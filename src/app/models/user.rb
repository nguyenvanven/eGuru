class User < ApplicationRecord
  include Clearance::User

  def self.from_omniauth(auth)
    where(auth.slice(:privider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.auth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save
    end
  end
end
