json.extract! customer, :id, :name, :email, :address, :gst_no, :phone, :created_at, :updated_at
json.url customer_url(customer, format: :json)
