class CreateFlies < ActiveRecord::Migration[5.0]
  def change
    create_table :flies do |t|
      t.string :name
      t.string :description
      t.integer :hatch_id
      t.timestamps
    end
  end
end
