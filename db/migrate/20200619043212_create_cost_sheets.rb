class CreateCostSheets < ActiveRecord::Migration[6.0]
  def change
    create_table :cost_sheets do |t|
      t.string :name
      t.references :product, null: false, foreign_key: true

      t.string :item_type

      t.integer :item_id
      t.boolean :active
      t.string :version

      t.timestamps
    end
  end
end
