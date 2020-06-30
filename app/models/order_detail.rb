class OrderDetail < ApplicationRecord
  belongs_to :pi,optional: true
  belongs_to :product
  has_many :cost_sheets, as: :item
  belongs_to :order_state,optional: true
  has_many :wooden_stage_transition_logs
  has_many :iron_stage_transition_logs

  before_create :set_order_state
  after_create :clone_costs
  def set_order_state
    self.order_state_id = OrderState.first.id
  end


  def clone_costs
    cs = self.product.cost_sheets.where(:item_type=>nil,item_id:nil).last
    new_cs=cs.dup
    new_cs.item_type = 'OrderDetail'
    new_cs.item_id = self.id
    new_cs.save!

    cs.cost_sheet_items.each do |i|
      newi = i.dup
      newi.cost_sheet_id = new_cs.id
      newi.save!
      newi.tag = "product"
      newi.save!
    end



  end
  def get_actual_cost
    self.cost_sheets.last.cost_sheet_items.where(tag:'order').sum(:value)
  end
  def get_budget_cost

    self.cost_sheets.last.cost_sheet_items.where(tag:'product').sum(:value)
  end

  def get_cost_variance
    self.get_budget_cost - self.get_actual_cost

  end





  end
