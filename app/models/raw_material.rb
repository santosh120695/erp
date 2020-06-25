class RawMaterial < ApplicationRecord
  has_many :raw_material_prices
  has_many :cost_sheet_items

  def get_price_data
    price_data = []
    self.raw_material_prices.order(:price_date).each_with_index  do |rmp,i|
      price_data.push(
                          rmp.price,
                      )
    end
    price_data
  end

  def get_price_labels
    price_data = []
    self.raw_material_prices.each_with_index  do |rmp,i|
      price_data.push(
          (rmp.price_date.to_s)
                      )
    end
    price_data
  end

end
