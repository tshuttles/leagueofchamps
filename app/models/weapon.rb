class Weapon < ApplicationRecord
  has_many :inventory_items 
  has_many :champions, through: :inventory_items

  validates :weapon_name, uniqueness: true
  validates :weapon_name, length: {minimum: 5}
  validates :type, uniqueness: true
  validates :type, length: {minimum: 3}
end