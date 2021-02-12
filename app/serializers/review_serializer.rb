class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :rating, :text, :movie, :user
  
  def movie
    object.movie
  end

  def user
    object.user
  end

end
