class CreateAtractivos < ActiveRecord::Migration
  def change
    create_table :atractivos do |t|
      t.string :name
      t.string :description
      t.integer :parr_id
      t.integer :cant_id
      t.integer :prov_id
      t.integer :subtipo_id
      t.integer :tipo_id
      t.integer :categ_id

      t.timestamps null: false
    end
  end
end
