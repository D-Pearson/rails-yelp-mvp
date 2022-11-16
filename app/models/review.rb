class Review < ApplicationRecord
  belongs_to :restaurant

  RANGE = (0..5)

  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: RANGE }
end
