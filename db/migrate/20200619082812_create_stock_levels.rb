class CreateStockLevels < ActiveRecord::Migration[6.0]
  def change
    create_table :stock_levels do |t|
      t.string :item_type
      t.integer :item_id
      t.date :as_on
      t.float :quantity

      t.timestamps
    end
  end
end
