class ChangeColumnRespuests < ActiveRecord::Migration
  def change
    change_column :respuests, :texto, 'boolean USING CAST(texto AS boolean)'
    rename_column :respuests, :texto, :rpta
  end
end
