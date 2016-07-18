class CreateSeccions < ActiveRecord::Migration
  def change
    create_table :seccions do |t|
      t.string :name
      t.references :pregunt, index: true, foreign_key: true
      t.references :categ, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
