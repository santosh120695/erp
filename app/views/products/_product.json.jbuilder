json.extract! product, :id, :name, :code, :dimension, :finish, :notes, :packing_size, :cbm, :range, :cost, :created_at, :updated_at
json.url product_url(product, format: :json)
