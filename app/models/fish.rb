class Fish < ApplicationRecord
  has_many :populations
  has_many :bodies, through: :populations
  has_one_attached :fish_image
  validates :name, presence: true, length: {maximum: 255}
  validates :description, length: {maximum: 1000}, allow_blank: true
  accepts_nested_attributes_for :populations, reject_if: :all_blank, allow_destroy: true

end