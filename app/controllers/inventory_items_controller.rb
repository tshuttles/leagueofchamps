class InventoryItemsController < ApplicationController
  
  def new 
    @weapon_name = Weapon.name.new 
  end 

  def create 
    @weapon_name = Weapon.name.new

  end 

  def destroy 
    @weapon_name.delete 
  end 

end