class CreateWeathers < ActiveRecord::Migration[5.0]
  def change
    create_table :weathers do |t|
      t.integer :temperature
      t.string :sky
      t.string :wind
      t.string :percipitation
      t.timestamps
    end
  end
end
