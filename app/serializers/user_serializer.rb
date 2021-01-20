class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :reviews, :movies

  # def review
  #   object.reviews
  # end 

  def movie 
    object.movies
  end

  has_many :reviews
  # has_many :movies, through: :reviews
end
