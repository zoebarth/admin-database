class Fish < ApplicationRecord
  has_one_attached :fish_image
  validates :name, presence: true, length: {maximum: 255}
  validates :description, length: {maximum: 1000}, allow_blank: true
end