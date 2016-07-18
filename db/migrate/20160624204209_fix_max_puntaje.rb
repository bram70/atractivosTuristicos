class FixMaxPuntaje < ActiveRecord::Migration
  def change
    remove_column :max_puntaje_seccions, :seccion_id, :int
    add_column :max_puntaje_seccions, :seccion, :string
  end
end
