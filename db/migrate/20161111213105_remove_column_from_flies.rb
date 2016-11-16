class RemoveColumnFromFlies < ActiveRecord::Migration[5.0]
  def change
    remove_column :flies, :hatch_id, :integer
  end
end
