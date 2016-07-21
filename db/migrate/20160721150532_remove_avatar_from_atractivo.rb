class RemoveAvatarFromAtractivo < ActiveRecord::Migration
  def change
    remove_column :atractivos, :avatar, :string
  end
end
