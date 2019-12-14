class InventoryItem < ApplicationRecord
  belongs_to :champions 
  belongs_to :weapons 

  validates :weapon_name, uniqueness: true
end