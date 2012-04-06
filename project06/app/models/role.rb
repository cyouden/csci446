class Role < ActiveRecord::Base
  has_many :user #User.role
  validates :name, presence: true, uniqueness: true
end
