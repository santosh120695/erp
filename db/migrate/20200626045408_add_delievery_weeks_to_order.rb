class AddDelieveryWeeksToOrder < ActiveRecord::Migration[6.0]
  def change
    add_column :order_details, :delivery_week, :integer
    add_column :order_details, :program, :string
  end
end
