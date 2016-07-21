class AddJerarquiaAtractivo < ActiveRecord::Migration
  def change
    add_column :atractivos, :jerarquia, :string
  end
end
