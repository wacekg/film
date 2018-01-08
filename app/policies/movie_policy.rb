class MoviePolicy < ApplicationPolicy
  attr_reader :user, :movie
  def initialize(user, movie)
    @user = user
    @movie = movie
  end
  def update?
    user or not movie.published?
  end
  def create?
    user or not movie.published?
  end
end
