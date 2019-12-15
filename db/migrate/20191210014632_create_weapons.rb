class CreateWeapons < ActiveRecord::Migration[6.0]
  def change
    create_table :weapons do |t|
      t.string :weapon_type
      t.string :weapon_name

      t.timestamps
    end
  end
end
