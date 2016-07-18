class RefactorPreguntCateg < ActiveRecord::Migration
  def change
    rename_table :pregunt_categs, :puntaje_seccions 
    remove_column :puntaje_seccions, :seccion, :string
    add_column :puntaje_seccions, :seccion_id, :int
    add_foreign_key :puntaje_seccions, :seccions
  end
end
