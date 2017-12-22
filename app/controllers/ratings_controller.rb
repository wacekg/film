class RatingsController < ApplicationController
  def create
    @movie = Movie.find(params[:movie_id])
    @rating = Rating.new(movie_id: @movie_id) #nie rozumiem argumentów w nawisie

  end
  def destroy
    @rating = Rating.find(params[:id])
    @rating.destroy
  end
end
