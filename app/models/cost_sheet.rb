class CostSheet < ApplicationRecord
  belongs_to :product
  has_many :cost_sheet_items

  belongs_to :item, polymorphic: true,optional: true
  scope :for_products, -> { where(item_id: nil) }

  def pure?
    item_id==nil
  end




end
