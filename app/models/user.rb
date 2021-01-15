class User < ApplicationRecord
    has_secure_password

    has_many :reviews
    has_many :movies, through: :reviews

    validates_presence_of :username
    validates_uniqueness_of :username
end
