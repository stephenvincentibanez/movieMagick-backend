class User < ApplicationRecord
    has_secure_password

    has_many :reviews, dependent: :destroy
    has_many :movies, through: :reviews
    has_many :watchlists
    has_many :moviesList, through: :watchlists, source: :movie

    validates_presence_of :username
    validates_uniqueness_of :username
end
