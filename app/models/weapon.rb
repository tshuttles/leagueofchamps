class Weapon < ApplicationRecord
  has_many :inventory_items 
  has_many :champions, through: :inventory_items
end