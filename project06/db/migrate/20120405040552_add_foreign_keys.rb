class AddForeignKeys < ActiveRecord::Migration
  def up
    add_column :users, :role_id, :integer
    add_column :games, :user_id, :integer
  end

  def down
    remove_column :users, :role_id
    remove_column :games, :user_id
  end
end
