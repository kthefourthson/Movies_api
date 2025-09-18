
class Movie < ApplicationRecord
  validates :title, presence: true
  validates :rating, numericality: { greater_than_or_equal_to: 5.5 }
end