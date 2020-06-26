class TransitionLog < ApplicationRecord
  belongs_to :order_detail
  belongs_to :from,foreign_key: :from_order_state_id,class_name: 'OrderState'
  belongs_to :to,foreign_key: :from_order_state_id,class_name: 'OrderState'
  after_commit :make_transition

  def make_transition
    self.order_detail.update(order_state: to)

  end
end
