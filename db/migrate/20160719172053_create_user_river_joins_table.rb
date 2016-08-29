class CreateUserRiverJoinsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :user_river do |t|
      t.integer :user_id
      t.integer :river_id
    end
  end
end
