class Author < ActiveRecord::Base
  has_attached_file :image
  has_many :articles, dependent: :destroy
  validates :name, format: {
		with: %r{^(?:(?!Pat).)*$}i,
		message: 'authors named Pat are not allowed'
	}
end
