class InventoryItem < ApplicationRecord
  belongs_to :champion
  belongs_to :weapon

  validates :weapon_name, uniqueness: true
  validates :weapon_name, length: {minimum: 5}

  before_validation :cap_weapon_name

 def cap_weapon_name
   weapon_name.capitalize if weapon_name
  end 

end