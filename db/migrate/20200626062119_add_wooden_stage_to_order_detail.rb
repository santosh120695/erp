class AddWoodenStageToOrderDetail < ActiveRecord::Migration[6.0]
  def change
    add_reference :order_details, :wooden_stage, null: true, foreign_key: true
    add_reference :order_details, :iron_stage, null: true, foreign_key: true
  end
end
