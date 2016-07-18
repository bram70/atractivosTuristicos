class AddColumnPregunts < ActiveRecord::Migration
  def change
    add_column :pregunts, :text_adicional, :boolean, default: false
  end
end
