class MoviesController < ApplicationController
  before_action :set_movie, except: [:index, :new, :create]
  def index
    @movies = Movie.all.order(relese_date: :desc)
  end
  def new
    @movie = Movie.new
  end
  def create
    @movie = Movie.create(movie_params)
  end
  def edit
  end
  def update
    @movie.update_attributes(movie_params)
  end
  def show
  end
  def destory
    @movie.destory
    redirect_to action: "index"
  end

  private
  def movie_params
    params.require(:movie).permit(:title, :director, :kind, :content, :length, :country, :relese_date, :scenarist)
  end
  def set_movie
    @movie = Movie.find(params[:id])
  end
end
