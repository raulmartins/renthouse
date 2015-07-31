class AddFieldToHouse < ActiveRecord::Migration
  def change
    add_column :houses, :obs, :text
  end
end
