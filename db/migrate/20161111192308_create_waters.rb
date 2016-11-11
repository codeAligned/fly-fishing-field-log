class CreateWaters < ActiveRecord::Migration[5.0]
  def change
    create_table :waters do |t|
      t.integer :temperature
      t.integer :flow
      t.string :clarity
      t.integer :post_id

      t.timestamps
    end
  end
end
