class Station < ActiveRecord::Migration[5.0]
  def change
    create_table :stations do |t|
      t.string :station_name
      t.integer :gage_height
      t.integer :discharge
      t.integer :river_id
    end
  end
end
