class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :update, :destroy]

  # GET /reviews
  def index
    reviews = Review.all
    render json: reviews
  end

  # GET /reviews/1
  # def show
  #   render json: review
  # end

  # POST /reviews
  def create
    review = Review.create(user_id: params[:user.id], movie_id: params[:movie.id] text: params[:text], rating: params[:rating])
    # review = Review.new(review_params)
    # if @review.save
    #   render json: @review, status: :created, location: @review
    # else
    #   render json: @review.errors, status: :unprocessable_entity
    # end
  end

  # PATCH/PUT /reviews/1
  def update
    review = Review.find_by_id(params[:id])
    review.update(text: params[:text], rating: params[:rating])
    render json: review
    # if @review.update(review_params)
    #   render json: @review
    # else
    #   render json: @review.errors, status: :unprocessable_entity
    # end
  end

  # DELETE /reviews/1
  def destroy
    @review.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def review_params
      params.require(:review).permit(:text, :rating)
    end
end
