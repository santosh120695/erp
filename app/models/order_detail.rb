class OrderDetail < ApplicationRecord
  belongs_to :pi
  belongs_to :product
end
