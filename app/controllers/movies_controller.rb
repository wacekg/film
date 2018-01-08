class MoviesController < ApplicationController
  before_action :set_movie, except: [:index, :new, :create]
  def index
    @movies = Movie.all.order(relese_date: :desc)
    @movies = @movies.where("title like ?", params[:q]) if params[:q].present?
  end
  def new
    @movie = Movie.new
  end
  def create
    @movie = Movie.create(movie_params)
    authorize @movie
    render 'movies/show'
  end
  def edit
  end
  def update
    authorize @movie
    @movie.update_attributes(movie_params)
    render 'movies/edit'
  end
  def show
    @rating = Rating.new(rating: session[:rating])
  end
  def destroy
    authorize @movie
    @movie.destroy
    redirect_to action: "index"
  end

  private
  def movie_params
    params.require(:movie).permit(:title, :director, :kind, :content, :length, :country, :relese_date, :scenarist)
  end
  def set_movie
    @movie = Movie.find(params[:id])
  end
  def authoriza_movie
  if @movie.author != current_user
    rededict_to article_path, alert: "Nie masz uprawnień"
  end
end
end
