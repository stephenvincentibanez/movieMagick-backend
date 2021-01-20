class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :rating, :text, :movie, :user
  
  def movie
    object.movie
  end

  def user
    object.user
  end

  # belongs_to :user
  # belongs_to :movie
end
