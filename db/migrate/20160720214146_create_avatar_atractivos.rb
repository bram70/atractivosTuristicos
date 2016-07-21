class CreateAvatarAtractivos < ActiveRecord::Migration
  def change
    create_table :avatar_atractivos do |t|
      t.integer :atractivo_id
      t.string :avatar

      t.timestamps null: false
    end
  end
end
