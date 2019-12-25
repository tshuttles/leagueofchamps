class WeaponsController < ApplicationController

  def index 
    @champion = Champion.find_by_id(params[:champion_id])
    @weapons = @champion.weapons.all 
  end 

  def show 
    # byebug
    @weapon = Weapon.find_by_id(params[:id])
  end 

  def create 
    @weapon = Weapon.new(weapon_params)
    if @weapon.save 
      @champion = @weapon.champions.where(id: 1)
      redirect_to champion_weapons_path(@champion)
    else
      redirect_to new_weapon_path
    end
  end 

  def destroy
    Weapon.find(params[:id]).destroy 
    redirect_to weapons_path
  end 

  private 

  def weapon_params 
    params.require(:weapon).permit(:weapon_type, inventory_items_attributes: [:weapon_name, :champion_id, :weapon_id], champions_attributes: [:id])
  end 

end