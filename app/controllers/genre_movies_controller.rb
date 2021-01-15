class GenreMoviesController < ApplicationController
  before_action :set_genre_movie, only: [:show, :update, :destroy]

  # GET /genre_movies
  def index
    @genre_movies = GenreMovie.all

    render json: @genre_movies
  end

  # GET /genre_movies/1
  def show
    render json: @genre_movie
  end

  # POST /genre_movies
  def create
    @genre_movie = GenreMovie.new(genre_movie_params)

    if @genre_movie.save
      render json: @genre_movie, status: :created, location: @genre_movie
    else
      render json: @genre_movie.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /genre_movies/1
  def update
    if @genre_movie.update(genre_movie_params)
      render json: @genre_movie
    else
      render json: @genre_movie.errors, status: :unprocessable_entity
    end
  end

  # DELETE /genre_movies/1
  def destroy
    @genre_movie.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_genre_movie
      @genre_movie = GenreMovie.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def genre_movie_params
      params.fetch(:genre_movie, {})
    end
end
