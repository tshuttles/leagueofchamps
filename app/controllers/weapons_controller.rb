class WeaponsController < ApplicationController

  def index 
    @weapons = Weapon.all
  end 

  def new 
    @weapon = Weapon.new 
  end 

  def create 
    @weapon = Weapon.new(weapon_params)
    @weapon.save ? (redirect_to champion_path(@champion)) : (redirect_to new_weapon_path)
  end 

  def destroy
    Weapon.find(params[:id]).destroy 
    redirect_to champion_path(@champion)
  end 

  private 

  def weapon_params 
    params.require(:weapon).permit(:weapon_name, :weapon_type)
  end 

end