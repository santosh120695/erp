class Product < ApplicationRecord
  has_many_attached :images
  has_many :cost_sheets

end
