class Weapon < ApplicationRecord
  has_many :inventory_items 
  has_many :champions, through: :inventory_items

  validates :weapon_type, uniqueness: true
  validates :weapon_type, length: {minimum: 3}

end