class AddFieldToAddress < ActiveRecord::Migration
  def change
    add_reference :addresses, :house, index: true, foreign_key: true
  end
end
