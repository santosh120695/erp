class CreateIronStages < ActiveRecord::Migration[6.0]
  def change
    create_table :iron_stages do |t|
      t.string :name

      t.timestamps
    end
  end
end
