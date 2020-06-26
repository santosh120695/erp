class AddDescriptionToProduct < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :description, :text
    add_column :products, :wooden_finish, :string
    add_column :products, :iron_finish, :string
  end
end
