class AddFrozenToPi < ActiveRecord::Migration[6.0]
  def change
    add_column :pis, :pi_frozen, :boolean,default: false
  end
end
