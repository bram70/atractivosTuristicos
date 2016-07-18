class AddSubseccionFromSeccion < ActiveRecord::Migration
  def change
    add_column :seccions, :subseccion, :string
  end
end
