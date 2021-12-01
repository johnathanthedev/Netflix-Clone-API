class UserFavoriteMoviesController < SecuredController
  skip_before_action :authorize_request, only: [:show]
  def index
    user_favorite_movies = UserFavoriteMovie.all
    render json: user_favorite_movies
  end

  def show
    user_favorite_movie = UserFavoriteMovie.find(params[:id])
    render json: user_favorite_movie
  rescue ActiveRecord::RecordNotFound
    head :not_found
  end

  def create
    user_favorite_movie = UserFavoriteMovie.create!(user_favorite_movie_params)
    render json: user_favorite_movie, status: :created
  end

  def destroy
    user_favorite_movie = UserFavoriteMovie.find(params[:id])
    user_favorite_movie.delete
    head :no_content
  end

  private

  def user_favorite_movie_params
    params.permit(:title, :overview, :tmdb_id, :genre_ids => [], :movie_poster_urls => [], :trailer_urls => [])
  end  
end