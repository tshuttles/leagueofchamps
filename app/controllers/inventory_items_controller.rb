class InventoryItemsController < ApplicationController
  
  def new 
    @inventory_items = InventoryItem.new
  end 

  def create 
    byebug
    @inventory_items = InventoryItem.new(inventory_items_params) 
    @inventory_items.save ? (redirect_to champion_path(@champion)) : (redirect_to new_inventory_items_path)
  end 

  # optional
  def destroy 
  end

  private 

  def inventory_items_params 
    params.require(:inventory_items).permit(:champion_id, :weapon_id, :weapon_count)
  end 

end