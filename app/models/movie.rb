class Movie < ApplicationRecord
  has_many :comments
  has_many :ratings
  has_many :user, through: :ratings
  validates :title, presence: true
end
