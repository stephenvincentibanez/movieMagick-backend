class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :reviews, :movies, :watchlists

  def movie
    object.movies
  end

  def watchlist
    object.watchlists
  end

  def reviews
    object.reviews
  end 

  has_many :reviews
  has_many :watchlists
end
