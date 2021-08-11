class Review < ApplicationRecord
  AUTHORIZED_RATING = [0, 1, 2, 3, 4, 5]
  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates :rating, inclusion: { in: AUTHORIZED_RATING }, numericality: { only_integer: true }
end
