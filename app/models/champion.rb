class Champion < ApplicationRecord
  belongs_to :user 
  belongs_to :classification
  belongs_to :race 
  has_many :inventory_items 
  has_many :weapons, through: :inventory_items

  validates :name, uniqueness: true
  validates :name, length: {minimum: 3}

  accepts_nested_attributes_for :weapon 

  RACE = %w{ Human Elf Dwarf Troll }
  CLASS = %w{ Warrior Ranger Sorceror Rogue Cleric }
end