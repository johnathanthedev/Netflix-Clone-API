class UserFavoriteMovie < ApplicationRecord
  validates_presence_of :title, :movie_poster_urls, :overview, :genre_ids, :tmdb_id, :trailer_urls
end
