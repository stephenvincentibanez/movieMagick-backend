class Genre < ApplicationRecord

    has_many :genremovies
    has_many :movies, through: :genremovies
    
end
