class CreateClimate < ActiveRecord::Migration
  def change
    create_table :climates do |t|
      t.string :name
      t.string :temperature
      t.string :precipitation

      t.timestamps null: false
    end
    add_column :atractivos, :climate_id, :int
    add_foreign_key :atractivos, :climates
    remove_column :atractivos, :clima, :text
    remove_column :atractivos, :temperatura, :string
    remove_column :atractivos, :precipitacion, :string
  end
end
