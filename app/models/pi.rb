class Pi < ApplicationRecord
  belongs_to :customer
  belongs_to :user
  has_many :order_details
end
