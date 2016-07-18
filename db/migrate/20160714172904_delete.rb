class Delete < ActiveRecord::Migration
  def change
    drop_table :puntaje_seccions
  end
end
