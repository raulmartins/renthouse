class CreateLodgers < ActiveRecord::Migration
  def change
    create_table :lodgers do |t|
      t.string :name
      t.string :phone
      t.string :sex
      t.string :cpf
      t.string :rg
      t.string :maritalstatus
      t.string :occupation

      t.timestamps null: false
    end
  end
end
