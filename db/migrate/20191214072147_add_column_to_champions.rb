class AddColumnToChampions < ActiveRecord::Migration[6.0]
  def change
    add_column :champions, :weapon, :string
  end
end