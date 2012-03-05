class Article < ActiveRecord::Base
	validates :title, :author, :body, presence: true
	validates :author, format: {
		with: %r{^(?:(?!Pat).)*$}i,
		message: 'authors named Pat are not allowed'
	}
end
