class User < ApplicationRecord
  has_many :champions

  has_secure_password
  # validates :name, uniqueness: true
  validates :name, presence: true
  validates :name, length: {minimum: 7}
  validates :password, length: {minimum: 7}

  def self.from_omniauth(auth)
    where(email: auth.info.email).first_or_initialize do |user|
      user.user_name = auth.info.name
      user.email = auth.info.email
      user.password = SecureRandom.hex
    end
  end
  
end