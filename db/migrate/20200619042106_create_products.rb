class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :code
      t.string :dimension
      t.string :finish
      t.text :notes
      t.string :packing_size
      t.string :cbm
      t.string :range
      t.float :cost

      t.timestamps
    end
  end
end
