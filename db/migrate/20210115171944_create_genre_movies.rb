class CreateGenreMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :genre_movies do |t|
      t.references :movie
      t.references :genre
      t.timestamps
    end
  end
end
