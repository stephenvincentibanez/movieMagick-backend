class WatchlistsController < ApplicationController
  before_action :set_watchlist, only: [:show, :update, :destroy]

  # GET /watchlists
  def index
    watchlists = Watchlist.all
    render json: watchlists
  end

  # GET /watchlists/1
  def show
    watchlist = Watchlist.find_by_id(params[:id])
    render json: watchlist
  end

  # POST /watchlists
  def create
    watchlist = Watchlist.new(watchlist_params)

    if watchlist.save
      render json: watchlist, status: :created, location: watchlist
    else
      render json: watchlist.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /watchlists/1
  def update
    if @watchlist.update(watchlist_params)
      render json: @watchlist
    else
      render json: @watchlist.errors, status: :unprocessable_entity
    end
  end

  # DELETE /watchlists/1
  def destroy
    watchlist = Watchlist.find_by_id(params[:id])
    watchlist.destroy
    render json: {
        status: :destroyed,
        watchlist:watchlist
    }
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_watchlist
      @watchlist = Watchlist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def watchlist_params
      params.require(:watchlist).permit(:user_id, :movie_id)
    end
end
