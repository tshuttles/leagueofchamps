class Champion < ApplicationRecord
  belongs_to :user 
  has_many :inventory_items 
  has_many :weapons, through: :inventory_items

  validates :name, uniqueness: true
  validates :name, length: {minimum: 3}

  accepts_nested_attributes_for :inventory_items
  accepts_nested_attributes_for :weapons

  after_create :cap_name

  def cap_name 
    name.capitalize if name
  end 

  RACE = %w{ Human Elf Dwarf Troll }
  CLASS = %w{ Warrior Ranger Sorceror Rogue Cleric }
  # TYPES = %w{ Sword Bow Staff Axe Knife }
end