class CreateRivers < ActiveRecord::Migration[5.0]
  def change
    create_table :rivers do |t|
      t.string :name
      t.integer :state_id
      t.string :location

      t.timestamps
    end
  end
end
