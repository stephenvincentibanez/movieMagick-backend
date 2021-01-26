# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'rest-client'

Movie.destroy_all
User.destroy_all
Review.destroy_all
Watchlist.destroy_all

id = ['tt3896198', 'tt0068646', 'tt1411697', 'tt0120737', 'tt2948372', 'tt0332379', 'tt0246578', 'tt6751668', 'tt0123073', 'tt7784604', 'tt0388795', 'tt0087363']

omdb = ENV["OMDB_API_KEY"]
id.each do |id|
response = RestClient.get("http://www.omdbapi.com/?i=#{id}&apikey=#{omdb}")
movie = JSON.parse(response)

    movies = Movie.create(
        title: movie["Title"],
        year: movie["Year"],
        rated: movie["Rated"],
        released: movie["Released"],
        runtime: movie["Runtime"],
        genres: movie["Genre"],
        director: movie["Director"],
        writer: movie["Writer"],
        actors: movie["Actors"],
        plot: movie["Plot"],
        language: movie["Language"],
        country: movie["Country"],
        awards: movie["Awards"],
        poster: movie["Poster"],
        ratings: movie["imdbRating"],
        imdbId: movie["imdbID"],
        production: movie["Production"]
    )
    movie["Genre"].split(', ').each do |genre|
    genres = Genre.find_or_create_by(name: genre)
    GenreMovie.create(movie_id: movies.id, genre_id: genres.id)
    end
end 
