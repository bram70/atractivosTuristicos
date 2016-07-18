class CreatePreguntCategs < ActiveRecord::Migration
  def change
    create_table :pregunt_categs do |t|
      t.integer :puntaje
      t.string :seccion
      t.references :pregunt, index: true, foreign_key: true
      t.references :categ, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
