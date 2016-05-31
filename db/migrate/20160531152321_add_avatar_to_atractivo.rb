class AddAvatarToAtractivo < ActiveRecord::Migration
  def change
    add_column :atractivos, :avatar, :string
  end
end
