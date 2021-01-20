class Movie < ApplicationRecord

    has_many :reviews
    has_many :users, through: :reviews
    # has_many :watchlists
    # has_many :genre_movies
    # has_many :genres, through: :genre_movies

end
