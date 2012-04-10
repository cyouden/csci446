class User < ActiveRecord::Base
  validates :username, presence: true, uniqueness: true
  validates :firstname, :lastname, :password, :email, presence: true
  has_secure_password
  belongs_to :role # role
  has_many :game   # Game.creator
  has_attached_file :avatar
  
  acts_as_authentic do |c|
    c.login_field = :username
    c.crypto_provider = Authlogic::CryptoProviders::BCrypt
    c.crypted_password_field = :password_digest
  end
  
  def role_symbols 
    [role.name.underscore.to_sym]
  end
  
  def fullname
    firstname + " " + lastname
  end
end
