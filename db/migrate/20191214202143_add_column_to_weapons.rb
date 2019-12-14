class AddColumnToWeapons < ActiveRecord::Migration[6.0]
  def change
    add_column :weapons, :weapon_name, :string
  end
end
