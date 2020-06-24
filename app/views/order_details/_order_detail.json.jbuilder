json.extract! order_detail, :id, :pi_id, :product_id, :quantity, :rate, :discount_percentage, :amount, :tax, :total_amount, :status, :created_at, :updated_at
json.url order_detail_url(order_detail, format: :json)
