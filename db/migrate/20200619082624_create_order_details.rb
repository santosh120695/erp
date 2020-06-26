class CreateOrderDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :order_details do |t|
      t.references :pi, null: true, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.float :quantity
      t.float :rate
      t.float :discount_percentage
      t.float :amount
      t.float :tax
      t.float :total_amount
      t.string :status

      t.timestamps
    end
  end
end
