class AddCodigoAtractivos < ActiveRecord::Migration
  def change
    add_column :atractivos, :codigo, :string, :default => nil
  end
end
