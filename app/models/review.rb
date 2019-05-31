class Review < ApplicationRecord
  belongs_to :article
  validates :note, inclusion: { in: [0, 1, 2, 3, 4, 5] }, numericality: true
end
