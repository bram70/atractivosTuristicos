class CreateCants < ActiveRecord::Migration
  def change
    create_table :cants do |t|
      t.string :name
      t.belongs_to :prov, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
