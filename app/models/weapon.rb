class Weapon < ApplicationRecord
  belongs_to :user
  has_many :inventory_items 
  has_many :champions, through: :inventory_items

  validates :weapon_name, uniqueness: true
  validates :weapon_name, length: {minimum: 5}
  validates :weapon_type, uniqueness: true
  validates :weapon_type, length: {minimum: 3}

  before_validation :uppercase_weapon_name
  before_validation :uppercase_weapon_type

  def uppercase_weapon_name
    weapon_name.upcase! 
  end 

  def uppercase_weapon_type 
    weapon_type.upcase! 
  end 

end