class AddStateIdToRivers < ActiveRecord::Migration[5.0]
  def change
    add_column :rivers, :state_id, :integer
  end
end
