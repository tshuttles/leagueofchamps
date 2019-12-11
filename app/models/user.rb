class User < ApplicationRecord
  has_many :champions

  has_secure_password
  validates :name, uniqueness: true
  validates :name, presence: true
  validates :name, length {minimum: 7}
  validates :password, length {minimum: 7}
end