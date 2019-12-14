class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :champions, :class, :classification
  end
end
