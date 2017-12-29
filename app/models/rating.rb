class Rating < ApplicationRecord
  belongs_to :movie
  belongs_to :user
  validates :rating, presence: true, numericality: { only_integer: true, in: 1..10 }
end
