class CreateRawMaterialPrices < ActiveRecord::Migration[6.0]
  def change
    create_table :raw_material_prices do |t|
      t.references :raw_material, null: false, foreign_key: true
      t.float :price
      t.date :price_date

      t.timestamps
    end
  end
end
