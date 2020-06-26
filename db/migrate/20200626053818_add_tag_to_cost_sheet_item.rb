class AddTagToCostSheetItem < ActiveRecord::Migration[6.0]
  def change
    add_column :cost_sheet_items, :tag, :string
  end
end
