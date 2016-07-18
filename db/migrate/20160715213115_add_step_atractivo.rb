class AddStepAtractivo < ActiveRecord::Migration
  def change
    add_column :atractivos, :step, :integer, :default => 0
  end
end
