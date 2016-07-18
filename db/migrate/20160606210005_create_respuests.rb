class CreateRespuests < ActiveRecord::Migration
  def change
    create_table :respuests do |t|
      t.string :texto
      t.text :especifique
      t.references :pregunt, index: true, foreign_key: true
      t.references :atractivo, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
