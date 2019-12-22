class Champion < ApplicationRecord
  belongs_to :user 
  has_many :inventory_items 
  has_many :weapons, through: :inventory_items

  validates :name, uniqueness: true
  validates :name, length: {minimum: 3}

  accepts_nested_attributes_for :inventory_items
  accepts_nested_attributes_for :weapons

  before_validation :cap_champ_name

  def cap_champ_name 
    self.name.titleize if name
  end 

  RACE = %w{ Human Elf Dwarf Troll Orc Giant Undead Halfling }
  CLASS = %w{ Warrior Ranger Sorceror Rogue Cleric Druid Necromancer Guardian Bard}
  
end