class CreateInventoryItems < ActiveRecord::Migration[6.0]
  def change
    create_table :inventory_items do |t|
      t.integer :weapon_count
      t.integer :champion_id
      t.integer :weapon_id

      t.timestamps
    end
  end
end
