json.extract! cost_sheet, :id, :name, :product_id, :raw_material_id, :cost_head_id, :quantity, :item_type, :value, :item_id, :active, :version, :created_at, :updated_at
json.url cost_sheet_url(cost_sheet, format: :json)
