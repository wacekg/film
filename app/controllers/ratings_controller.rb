class RatingsController < ApplicationController
  def create
    # movie_id = params[:movie_id]
    # user_id = current_user[:id]
    @movie = Movie.find(params[:movie_id])
    @rating = Rating.new(params.require(:rating).permit(:rating, :comment))
    binding.pry
  end
  def destroy
    @rating = Rating.find(params[:id])
    @rating.destroy
  end
end
