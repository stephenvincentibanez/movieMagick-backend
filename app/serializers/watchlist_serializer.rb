class WatchlistSerializer < ActiveModel::Serializer
  attributes :id, :user, :movie

  def movie
    object.movie
  end

  def user
    object.user
  end

end
