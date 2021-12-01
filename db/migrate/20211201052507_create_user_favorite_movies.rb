class CreateUserFavoriteMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :user_favorite_movies do |t|
      t.string :title
      t.string :movie_poster_urls, array: true, :default => []
      t.text :overview
      t.string :genre_ids, array: true, :default => []
      t.integer :tmdb_id
      t.string :trailer_urls, array: true, :default => []

      t.timestamps
    end
  end
end
