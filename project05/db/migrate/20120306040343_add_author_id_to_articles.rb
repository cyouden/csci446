class AddAuthorIdToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :author_id, :integer
    remove_column :articles, :author
  end
end
