class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.string :typehouse
      t.integer :compartment

      t.timestamps null: false
    end
  end
end
