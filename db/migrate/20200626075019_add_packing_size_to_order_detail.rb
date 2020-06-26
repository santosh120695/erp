class AddPackingSizeToOrderDetail < ActiveRecord::Migration[6.0]
  def change
    add_column :order_details, :packing_size, :string
  end
end
