class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :rated, :released, :runtime, :genres, :director, :writer, :actors, :plot, :language, :country, :awards, :poster, :ratings, :imdbId, :production
  has_many :reviews
  has_many :users, through: :reviews

end
