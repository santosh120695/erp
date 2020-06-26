class AddBuyerReferenceToOrderDetail < ActiveRecord::Migration[6.0]
  def change
    add_column :order_details, :buyer_reference, :string

  end
end
