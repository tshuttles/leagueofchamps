class Champion < ApplicationRecord
  belongs_to :user 
  belongs_to :class 
  belongs_to :race 
  has_many :inventory_items 
  has_many :weapons, through: inventory_items

  validates :name, uniqueness: true
  validates :name, length {minimum: 3}
end