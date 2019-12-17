class Weapon < ApplicationRecord
  has_many :inventory_items 
  has_many :champions, through: :inventory_items

  validates :weapon_type, uniqueness: true
  validates :weapon_type, length: {minimum: 3}

  after_create :cap_weapon_type

  def cap_weapon_type 
    weapon_type.capitalize! if weapon_type
  end 

end