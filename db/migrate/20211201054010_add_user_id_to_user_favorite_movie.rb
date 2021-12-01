class AddUserIdToUserFavoriteMovie < ActiveRecord::Migration[6.1]
  def change
    add_column :user_favorite_movies, :user_favorite_movie_id, :string
  end
end
