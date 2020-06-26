class AddBuyerOrderDateToPi < ActiveRecord::Migration[6.0]
  def change
    add_column :pis, :buyer_order_date, :date
  end
end
