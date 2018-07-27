class Body < ApplicationRecord
  has_many :populations
  has_many :fishes, through: :populations
  validates :name, presence: true, length: {maximum: 255}
  validates :latitude, :longitude, presence:true, numericality: { only_decimal: true }
  validates :description, length: {maximum: 1000}, allow_blank: true

end