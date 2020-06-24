class CreateCostHeads < ActiveRecord::Migration[6.0]
  def change
    create_table :cost_heads do |t|
      t.string :name

      t.timestamps
    end
  end
end
