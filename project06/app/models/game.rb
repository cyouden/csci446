class Game < ActiveRecord::Base
  belongs_to :user #creator
end
