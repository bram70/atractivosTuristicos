class CreateTipos < ActiveRecord::Migration
  def change
    create_table :tipos do |t|
      t.string :name
      t.belongs_to :categ, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
