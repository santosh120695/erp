class OrderState < ApplicationRecord
  has_many :order_details
end
