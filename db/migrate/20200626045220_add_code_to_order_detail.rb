class AddCodeToOrderDetail < ActiveRecord::Migration[6.0]
  def change
    add_column :order_details, :code, :string
  end
end
