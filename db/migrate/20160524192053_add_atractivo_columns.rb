class AddAtractivoColumns < ActiveRecord::Migration
  def change
    add_column :atractivos, :calle_principal, :string
    add_column :atractivos, :numero_direccion, :string
    add_column :atractivos, :transversal_direccion, :string
    add_column :atractivos, :barrio_direccion, :string
    add_column :atractivos, :sitio_cercano, :string
    add_column :atractivos, :latitud, :decimal, { :precision => 10, :scale =>6 }
    add_column :atractivos, :longitud, :decimal, { :precision => 10, :scale =>6 }
    add_column :atractivos, :altura, :string
    add_column :atractivos, :clima, :text
    add_column :atractivos, :temperatura, :string
    add_column :atractivos, :precipitacion, :string
  end
end
