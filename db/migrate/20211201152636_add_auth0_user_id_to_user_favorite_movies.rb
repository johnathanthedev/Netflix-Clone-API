class AddAuth0UserIdToUserFavoriteMovies < ActiveRecord::Migration[6.1]
  def change
    add_column :user_favorite_movies, :auth0_user_id, :string
  end
end
