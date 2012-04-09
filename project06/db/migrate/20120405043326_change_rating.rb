class ChangeRating < ActiveRecord::Migration
  def up
    remove_column :games, :rating
    add_column :games, :rating, :integer
  end

  def down
    remove_column :games, :rating
    add_column :games, :rating, :string
  end
end
