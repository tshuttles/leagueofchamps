class InventoryItemsController < ApplicationController
  
  def new 
    @weapon_name = Weapon.name.new 
  end 

  def create 
    @weapon_name = Weapon.name.new
    @weapon_name.save ? (redirect_to champion_path(@champion)) : (redirect_to new_champion_path)
  end 

  def destroy 
    @weapon_name.delete 
    redirect_to new_champion_path
  end 

end