class CreateMaxPuntajeSeccions < ActiveRecord::Migration
  def change
    create_table :max_puntaje_seccions do |t|
      t.float :max
      t.string :seccion

      t.timestamps null: false
    end
  end
end
