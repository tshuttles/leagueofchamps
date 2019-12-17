class WeaponsController < ApplicationController

  def index 
    @weapons = Weapon.all
  end 

  def show 
    @weapon = Weapon.find_by(id: params[:id])
  end 

  def new 
    @weapon = Weapon.new(champion_id: params[:champion_id])
  end 

  def create 
    @champion = Champion.find_by(id: params[:champion_id])
    @weapon = @champion.weapons.build(weapon_params)
    if @weapon.save 
      redirect_to weapons_path
    else
      redirect_to new_weapon_path
    end
  end 

  def destroy
    Weapon.find(params[:id]).destroy 
    redirect_to champion_path(@champion)
  end 

  private 

  def weapon_params 
    params.require(:weapon).permit(:weapon_type, inventory_items: [:weapon_name])
  end 

end