class Review < ApplicationRecord
  belongs_to :restaurant
  RATING = [0, 1, 2, 3, 4, 5]
  validates :rating, inclusion: { in: RATING }, presence: true
  validates :content, length: { minimum: 1 }, presence: true
end
