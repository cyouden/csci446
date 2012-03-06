class Article < ActiveRecord::Base
  validates :title, :body, presence: true
  belongs_to :author
end
