class Champion < ApplicationRecord
  belongs_to :user 
  has_many :inventory_items 
  has_many :weapons, through: :inventory_items

  validates :name, uniqueness: true
  validates :name, length: {minimum: 3}

  accepts_nested_attributes_for :inventory_items 

  RACE = %w{ Human Elf Dwarf Troll }
  CLASS = %w{ Warrior Ranger Sorceror Rogue Cleric }
  # TYPES = %w{ Sword Bow Staff Axe Knife }
end