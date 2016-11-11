class DropPosts < ActiveRecord::Migration[5.0]
  def change
    drop_table :posts do |t|
      t.string  "name"
      t.string  "text"
      t.integer "user_id"
      t.timestamps null: false
    end
  end

end
