class Body < ApplicationRecord
  validates_presence_of :name, :latitude, :longitude
  validates :latitude, :longitude, numericality: { only_decimal: true }
  validates :description, length: {maximum: 1000}, allow_blank: true
end