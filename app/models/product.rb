class Product < ApplicationRecord
  has_many_attached :images
  has_many :cost_sheets

  def get_cost

    self.cost_sheets.for_products.last.cost_sheet_items.sum(:value)
  end
end
