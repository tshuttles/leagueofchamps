class Weapon < ApplicationRecord
  has_many :inventory_items 
  has_many :champions, through: :inventory_items

  validates :name, uniqueness: true
  validates :name, length {minimum: 5}

  TYPES = %w{ Sword Bow Staff Axe }
end