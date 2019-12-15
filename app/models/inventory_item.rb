class InventoryItem < ApplicationRecord
  belongs_to :champion
  belongs_to :weapon

  validates :weapon_name, uniqueness: true
end