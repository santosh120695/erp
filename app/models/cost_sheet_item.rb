class CostSheetItem < ApplicationRecord

  belongs_to :raw_material,optional: true
  belongs_to :cost_head,optional: true
  belongs_to :cost_sheet

  before_create :calculate_value

  def calculate_value
    if self.raw_material.present?
      self.cost =  self.raw_material.raw_material_prices.last.price
    end
    self.value = self.cost * quantity
  end
end
