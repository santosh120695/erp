json.extract! stock_level, :id, :item_type, :item_id, :as_on, :quantity, :created_at, :updated_at
json.url stock_level_url(stock_level, format: :json)
