class SearchController < ApplicationController

    APIKEY = ENV["OMDB_API_KEY"]

    def show
        # byebug
        response = RestClient.get("http://www.omdbapi.com?apikey=#{APIKEY}&s=#{params[:search]}")
        result = JSON.parse(response)
        render json: result
    end

end
