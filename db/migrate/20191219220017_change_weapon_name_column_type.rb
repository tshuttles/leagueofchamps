class ChangeWeaponNameColumnType < ActiveRecord::Migration[6.0]
  def up 
    change_column :inventory_items, :weapon_name, :string
  end

  def down 
    change_column :inventory_items, :weapon_name, :integer
  end 

end