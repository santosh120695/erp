class CreateStageMasters < ActiveRecord::Migration[6.0]
  def change
    create_table :stage_masters do |t|
      t.string :name
      t.string :department
      t.string :responsible
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
