class WatchlistSerializer < ActiveModel::Serializer
  attributes :id, :movie

  def movie
    object.movie
  end
  
end
