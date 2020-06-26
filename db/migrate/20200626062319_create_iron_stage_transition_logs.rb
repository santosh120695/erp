class CreateIronStageTransitionLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :iron_stage_transition_logs do |t|
      t.integer :from_iron_stage_id
      t.integer :to_iron_stage_id
      t.references :order_detail, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.text :comment

      t.timestamps
    end
  end
end
