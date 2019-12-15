class CreateChampions < ActiveRecord::Migration[6.0]
  def change
    create_table :champions do |t|
      t.string :name
      t.string :classification
      t.string :race
      t.integer :user_id

      t.timestamps
    end
  end
end
