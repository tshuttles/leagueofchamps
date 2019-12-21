class User < ApplicationRecord
  has_many :champions
  has_many :weapons

  has_secure_password
  # validates :name, uniqueness: true
  validates :name, presence: true
  validates :name, length: {minimum: 7}
  validates :password, length: {minimum: 7}

  before_validation :cap_user_name 
  
  def cap_champ_name 
    self.name.titleize! if name
  end

  def self.from_omniauth(auth)
    where(name: auth.info.name).first_or_initialize do |user|
      user.name = auth.info.name
      user.password = SecureRandom.hex
    end
  end


  
end