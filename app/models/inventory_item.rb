class InventoryItem < ApplicationRecord
  belongs_to :champions 
  belongs_to :weapons 
end