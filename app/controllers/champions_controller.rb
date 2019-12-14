class ChampionsController < ApplicationController
  before_action :find_champion, only: [:show, :edit, :update]

  def new 
    @champion = Champion.new 
  end 
  
  def index 
    @champions = Champion.all 
  end 

  def show
  end 

  def create 
    @champion = Champion.new(champion_params)
    @champion.save ? (redirect_to champion_path(@champion)) : (redirect_to new_champion_path)
  end

  def edit 
  end 

  def update 
    @champion.update(champion_params)
    redirect_to champion_path(@champion)
  end 

  def destroy
    Champion.find(params[:id]).destroy
    redirect_to champions_path  
  end

  private 

  def champion_params 
    params.require(:champion).permit(:name, :weapon, :race, :class, inventory_items: [:weapon_name])
  end 

  def find_champion
    @champion = Champion.find_by(id: params[:id])
  end 

end