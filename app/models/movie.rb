class Movie < ApplicationRecord

    has_many :reviews
    has_many :users, through: :reviews
    has_many :genremovies
    has_many :genres, through: genremovies

end
