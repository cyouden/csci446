class User < ActiveRecord::Base
    validates :username, presence: true, uniqueness: true
    has_secure_password
    belongs_to :role # role
    has_many :game   # Game.creator
    has_attached_file :avatar
end
