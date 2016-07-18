class CreatePregunts < ActiveRecord::Migration
  def change
    create_table :pregunts do |t|
      t.string :texto
      t.string :tipo
      t.integer :orden
      t.string :seccion

      t.timestamps null: false
    end
  end
end
