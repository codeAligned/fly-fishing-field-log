class CreateRiverFlies < ActiveRecord::Migration[5.0]
  def change
    create_table :river_flies do |t|
      t.integer :river_id
      t.integer :fly_id

      t.timestamps
    end
  end
end
