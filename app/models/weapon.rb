class Weapon < ApplicationRecord
  belongs_to :user
  has_many :inventory_items 
  has_many :champions, through: :inventory_items

  validates :weapon_name, uniqueness: true
  validates :weapon_name, length: {minimum: 5}
  validates :weapon_type, uniqueness: true
  validates :weapon_type, length: {minimum: 3}
end