class CreateParrs < ActiveRecord::Migration
  def change
    create_table :parrs do |t|
      t.string :name
      t.belongs_to :cant, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
