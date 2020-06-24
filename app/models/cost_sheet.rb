class CostSheet < ApplicationRecord
  belongs_to :product
  has_many :cost_sheet_items

end
