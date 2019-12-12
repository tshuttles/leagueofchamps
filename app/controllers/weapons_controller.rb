class WeaponsController < ApplicationController

  def new 
    @weapon = Weapon.new 
  end 

  def create 
    @weapon = Weapon.new 
    @weapon.save ? (redirect_to weapon_path(@weapon)) : (redirect_to new_weapon_path)
  end 

  def delete
    Weapon.find(params[:id]).destroy 
    redirect_to weapon_path(@weapon)
  end 

end