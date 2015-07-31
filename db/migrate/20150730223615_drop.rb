class Drop < ActiveRecord::Migration
  def change
  	drop_table :houses
  end
end
