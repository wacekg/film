class RatingsController < ApplicationController
  before_action :set_rating
  def create
    @movie = Movie.find(params[:movie_id])
    authorize @rating
    @movie.ratings.create(rating_params.merge({ user_id: current_user.id }))
  end
  def destroy
    authorize @rating
    @rating = Rating.find(params[:id])
    @rating.destroy
  end

  private
  def rating_params
    params.require(:rating).permit(:rating, :comment)
  end
  def set_rating
    @rating = Rating.first
  end
end
