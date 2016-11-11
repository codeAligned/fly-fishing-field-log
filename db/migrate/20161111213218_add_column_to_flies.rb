class AddColumnToFlies < ActiveRecord::Migration[5.0]
  def change
    add_column :flies, :color, :string
    add_column :flies, :size, :integer
  end
end
