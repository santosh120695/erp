class CreateWoodenStages < ActiveRecord::Migration[6.0]
  def change
    create_table :wooden_stages do |t|
      t.string :name
      t.timestamps
    end
  end
end
