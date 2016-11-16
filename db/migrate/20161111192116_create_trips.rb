class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.string :name
      t.integer :rating
      t.string :date
      t.string :highlights
      t.integer :post_id

      t.timestamps
    end
  end
end
