class SessionSerializer < ActiveModel::Serializer
  attributes :id, :username, :reviews, :movies

  def movie
    object.movies
  end

  has_many :reviews
end
