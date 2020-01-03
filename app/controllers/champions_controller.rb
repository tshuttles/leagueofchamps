class ChampionsController < ApplicationController
  before_action :find_champion, only: [:show, :edit, :update]

  def index 
    @champions = current_user.champions.all.alpha
  end 

  def show
  end 

  def new 
    @champion = Champion.new
  end 

  def create
    @champion = current_user.champions.build(champion_params)
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
    params.require(:champion).permit(:name, :race, :classification, inventory_items_attributes: [:weapon_name, :weapon_id], weapons_attributes: [:weapon_type])
  end 

  def find_champion
    @champion = Champion.find_by(id: params[:id])
  end 

end