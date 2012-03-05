class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :author
      t.text :body
      t.date :creation_date
      t.integer :times_editted

      t.timestamps
    end
  end
end
