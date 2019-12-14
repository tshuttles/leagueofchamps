class ChangeColumnInInventoryItems < ActiveRecord::Migration[6.0]
  def change
    rename_column :inventory_items, :weapon_name, :weapon_count
    change_column :inventory_items, :weapon_count, :integer
  end
end
