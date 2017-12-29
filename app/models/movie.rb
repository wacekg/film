class Movie < ApplicationRecord
  has_many :ratings, dependent: :destroy
  has_many :users, through: :ratings
  validates :title, presence: true
end
