class CreatePis < ActiveRecord::Migration[6.0]
  def change
    create_table :pis do |t|
      t.references :customer, null: false, foreign_key: true
      t.string :uuid
      t.date :order_date
      t.string :reference
      t.references :user, null: false, foreign_key: true
      t.integer :sales_person

      t.timestamps
    end
  end
end
