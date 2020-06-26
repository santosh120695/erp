class CreateTransitionLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :transition_logs do |t|
      t.integer :from_order_state_id
      t.integer :to_order_state_id
      t.integer :user_id
      t.text :comment
      t.references :order_detail, null: false, foreign_key: true

      t.timestamps
    end
  end
end
