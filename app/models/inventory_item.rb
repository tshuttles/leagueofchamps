class InventoryItem < ApplicationRecord
  belongs_to :champion
  belongs_to :weapon

  validates :weapon_name, uniqueness: true
  before_validation :cap_weapon_name

  def cap_weapon_name
    weapon_name.capitalize!
  end 

end