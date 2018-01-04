class RatingsController < ApplicationController
  def create
    @movie = Movie.find(params[:movie_id])
    @movie.ratings.create(rating_params.merge({ user_id: current_user.id }))
    # binding.pry
  end
  def destroy
    @rating = Rating.find(params[:id])
    @rating.destroy
  end

  private
  def rating_params
    params.require(:rating).permit(:rating, :comment)
  end
end
