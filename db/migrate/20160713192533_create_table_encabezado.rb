class CreateTableEncabezado < ActiveRecord::Migration
  def change
    create_table :encabezados do |t|
      t.integer :categ_id
      t.string :seccion_name
      t.string :encabezado
      t.timestamps null: false
    end
    create_table :subencabezados do |t|
      t.integer :categ_id
      t.string :seccion_name
      t.string :subseccion_name
      t.string :subencabezado
      t.timestamps null: false
    end
  end
end
