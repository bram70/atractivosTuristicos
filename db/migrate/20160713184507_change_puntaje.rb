class ChangePuntaje < ActiveRecord::Migration
  def change
    change_column :puntaje_seccions, :puntaje, :decimal, :precision => 2, :scale => 1
  end
end
