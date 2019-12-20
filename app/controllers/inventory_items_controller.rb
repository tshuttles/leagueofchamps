class InventoryItemsController < ApplicationController
  
  def new 
    @inventory_item = InventoryItem.new
  end 

  def create
    @inventory_item = InventoryItem.new(inventory_items_params)
    @inventory_item.save ? (redirect_to champion_path(@inventory_item.champion)) : (redirect_to new_champion_inventory_item_path(@inventory_item.champion))
  end 

  def edit 
    @inventory_item = InventoryItem.find_by_id(params[:id])
  end 

  def update
    @inventory_item = InventoryItem.find_by_id(params[:id])
    @inventory_item.update(inventory_items_params)
    redirect_to champion_path(@inventory_item.champion)
  end
  # optional
  def destroy 
  end

  private 

  def inventory_items_params 
    params.require(:inventory_item).permit(:champion_id, :weapon_id, :weapon_name)
  end 

end