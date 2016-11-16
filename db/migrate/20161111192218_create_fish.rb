class CreateFish < ActiveRecord::Migration[5.0]
  def change
    create_table :fish do |t|
      t.string :species
      t.integer :weight
      t.integer :length

      t.timestamps
    end
  end
end
