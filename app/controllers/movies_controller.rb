class MoviesController < ApplicationController
  def index
    @movies = Movie.all.order(relese_date: :desc)
  end
  def new
    @movie = Movie.new
  end
  def create
    @movie = Movie.create()
  end
  def edit
  end
  def update
    @movie.update_attributes()
  end
  def show
  end
  def destory
    @movie.destory
    redirect_to action: "index"
  end

  private
end
