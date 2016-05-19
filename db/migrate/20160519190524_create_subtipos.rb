class CreateSubtipos < ActiveRecord::Migration
  def change
    create_table :subtipos do |t|
      t.string :name
      t.belongs_to :tipo, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
