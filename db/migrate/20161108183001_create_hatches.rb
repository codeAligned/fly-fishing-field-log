class CreateHatches < ActiveRecord::Migration[5.0]
  def change
    create_table :hatches do |t|
      t.string :bug_type
      t.string :name
      t.string :color
      t.string :dates
      t.string :emergence
      t.string :size
      t.string :spinner_fall
      t.integer :state_id

      t.timestamps
    end
  end
end
