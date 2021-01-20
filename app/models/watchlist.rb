class Watchlist < ApplicationRecord

    belongs_to :user,
    belongs_to :movies,
    has_many :movies

end
