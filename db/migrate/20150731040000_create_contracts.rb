class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.float :monthlyPayment
      t.float :bail
      t.date :startDate
      t.date :finalDate
      t.references :house, index: true, foreign_key: true
      t.references :lodger, index: true, foreign_key: true
      t.text :obs

      t.timestamps null: false
    end
  end
end
