class AddFkAtractivosSeccion < ActiveRecord::Migration
  def change
    remove_column :pregunts, :seccion, :string
  end
end
