class RemovePuntajeTableAddPuntajeToSeccions < ActiveRecord::Migration
  def change
    add_column :seccions, :puntaje, :decimal, :precision => 2, :scale => 1
    drop_table :puntaje_seccions
  end
end
