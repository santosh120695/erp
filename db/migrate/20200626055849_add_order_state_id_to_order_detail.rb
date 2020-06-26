class AddOrderStateIdToOrderDetail < ActiveRecord::Migration[6.0]
  def change
    add_reference :order_details, :order_state, null: true, foreign_key: true
  end
end
