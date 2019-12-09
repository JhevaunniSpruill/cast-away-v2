class User < ApplicationRecord
  has_many :polls
  
  VALID_USERNAME_REGEX = /A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  before_save {self.username = username.downcase}
  
  validates :username,
    presence: true,
    length: {minimum: 5}
    
    
    validates :password,
    presence: true,
    length: {minimum: 8}
    
    has_secure_password
end
