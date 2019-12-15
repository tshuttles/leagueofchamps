class InventoryItem < ApplicationRecord
  belongs_to :champions 
  belongs_to :weapons 
  belongs_to :user

  validates :weapon_name, uniqueness: true
end