class CostSheetItem < ApplicationRecord

  belongs_to :raw_material,optional: true
  belongs_to :cost_head,optional: true
  belongs_to :cost_sheet

  before_create :calculate_value

  def calculate_value
    # if self.raw_material.present?
    #   self.cost =  self.raw_material.raw_material_prices.last.price
    # end
    self.value = self.cost * quantity

  #  define tags
    if self.cost_sheet.item_id == nil
      self.tag = 'product'
    else
      self.tag = 'order'
    end
  end


end
