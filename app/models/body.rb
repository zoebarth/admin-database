class Body < ApplicationRecord
  has_many :populations
  has_many :fishes, through: :populations
  validates :name, presence: true, length: {maximum: 255}
  validates :latitude, presence:true, numericality: { only_decimal: true, greater_than_or_equal_to: -90, less_than_or_equal_to: 90}
  validates :longitude, presence:true, numericality: { only_decimal: true, greater_than_or_equal_to: -180, less_than_or_equal_to: 180 }
  validates :description, length: {maximum: 1000}, allow_blank: true

end