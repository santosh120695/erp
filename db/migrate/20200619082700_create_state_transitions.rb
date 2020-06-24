class CreateStateTransitions < ActiveRecord::Migration[6.0]
  def change
    create_table :state_transitions do |t|
      t.integer :from
      t.integer :to
      t.text :comment
      t.references :user, null: false, foreign_key: true
      t.references :order_detail, null: false, foreign_key: true

      t.timestamps
    end
  end
end
