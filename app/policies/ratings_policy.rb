class RatingsPolicy < ApplicationPolicy
  attr_reader :user, :rating

  def initialize(user, rating)
    @user = user
    @rating = rating
  end
end
