class Role < ActiveRecord::Base
    has_many :user #User.role
end
