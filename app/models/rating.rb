class Rating < ApplicationRecord
  belongs_to :movie
  validates :rating, presence: true
end
