class WoodenStageTransitionLog < ApplicationRecord
  belongs_to :order_detail
  belongs_to :user
  belongs_to :from,foreign_key: :from_wooden_stage_id,class_name: 'WoodenStage'
  belongs_to :to,foreign_key: :to_wooden_stage_id,class_name: 'WoodenStage'

  def get_from
    from.nil? ? "NA" : from.name
  end
  def get_to
    to.nil? ?  "NA1" :  to.name
  end

end
