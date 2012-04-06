class Game < ActiveRecord::Base
  belongs_to :user #creator
  validates :title, presence: true
end
