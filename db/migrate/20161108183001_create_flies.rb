class CreateFlies < ActiveRecord::Migration[5.0]
  def change
    create_table :flies do |t|
      t.string :type
      t.string :name
      t.string :color
      t.string :dates
      t.string :emergence
      t.string :size
      t.integer :state_id

      t.timestamps
    end
  end
end
