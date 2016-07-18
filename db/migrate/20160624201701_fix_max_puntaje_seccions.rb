class FixMaxPuntajeSeccions < ActiveRecord::Migration
  def change
    remove_column :max_puntaje_seccions, :seccion_id, :int
    remove_foreign_key :max_puntaje_seccions, :seccions
    add_column :max_puntaje_seccions, :seccion, :string
  end
end
