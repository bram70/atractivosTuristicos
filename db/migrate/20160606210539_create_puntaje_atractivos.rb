class CreatePuntajeAtractivos < ActiveRecord::Migration
  def change
    create_table :puntaje_atractivos do |t|
      t.float :puntos
      t.references :atractivo, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
