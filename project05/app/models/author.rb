class Author < ActiveRecord::Base
  has_many :articles, dependent: :destroy
  validates :name, format: {
		with: %r{^(?:(?!Pat).)*$}i,
		message: 'authors named Pat are not allowed'
	}
end
