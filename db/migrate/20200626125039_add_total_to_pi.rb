class AddTotalToPi < ActiveRecord::Migration[6.0]
  def change
    add_column :pis, :total, :float
  end
end
