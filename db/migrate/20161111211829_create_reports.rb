class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
      t.string :name
      t.string :date
      t.integer :rating
      t.string :highlights
      t.integer :fish_id
      t.integer :weather_id
      t.integer :water_id
      t.integer :fly_id

      t.timestamps
    end
  end
end
