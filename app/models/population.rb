class Population < ApplicationRecord
  belongs_to :fish
  belongs_to :body
  validates :amount, presence: true, numericality: true
end