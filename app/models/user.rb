class User < ApplicationRecord
    validates :username, presence: true, length: {minumum: 5}
    validates :password, presence: true, length: {minimum: 8}
end
