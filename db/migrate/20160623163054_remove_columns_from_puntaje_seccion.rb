class RemoveColumnsFromPuntajeSeccion < ActiveRecord::Migration
  def change
    remove_column :puntaje_seccions, :pregunt_id, :int
    remove_column :puntaje_seccions, :categ_id, :int
  end
end
