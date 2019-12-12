class ChampionsController < ApplicationController
  before_action :find_champion, only: [:show, :edit, :update]

  def index 
    @champions = Champion.all 
  end 

  def show
  end 

  def new 
    @champion = Champion.new 
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

  def delete 
    Champion.find(params[:id]).destroy
    redirect_to champions_path  
  end

  private 

  def champion_params 
    params.require(:champion).permit(:name, :weapon, :race, :class)
  end 

  def find_champion
    @champion = Champion.find_by(id: params[:id])
  end 

end