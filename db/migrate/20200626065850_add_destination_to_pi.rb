class AddDestinationToPi < ActiveRecord::Migration[6.0]
  def change
    add_column :pis, :destination, :string
    add_column :pis, :loading_location, :string
    add_column :pis, :unloading_location, :string
    add_column :pis, :terms_of_payment, :string
    add_column :pis, :terms_of_delivery, :string
    add_column :pis, :country_of_origin, :string
    add_column :pis, :place_of_receipt_by_shipper, :string
    add_column :pis, :delivery_weeks, :string
  end
end
