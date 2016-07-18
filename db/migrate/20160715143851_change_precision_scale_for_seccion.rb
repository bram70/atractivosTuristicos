class ChangePrecisionScaleForSeccion < ActiveRecord::Migration
  def change
    change_column :seccions, :puntaje, :decimal, :precision => 3, :scale => 1
  end
end
