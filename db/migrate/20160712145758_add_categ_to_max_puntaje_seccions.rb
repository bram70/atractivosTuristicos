class AddCategToMaxPuntajeSeccions < ActiveRecord::Migration
  def change
    add_column :max_puntaje_seccions, :categ, :integer
  end
end
