class CreateCostSheetItems < ActiveRecord::Migration[6.0]
  def change
    create_table :cost_sheet_items do |t|
      t.string :name

      t.references :raw_material, null: true, foreign_key: true
      t.references :cost_head, null: true, foreign_key: true
      t.float :quantity
      t.float :cost
      t.float :value
      t.references :cost_sheet

      t.timestamps
    end
  end
end
