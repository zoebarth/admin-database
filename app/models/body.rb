class Body < ApplicationRecord
  has_many :populations
  has_many :fishess, through: :populations
  validates_presence_of :name, :latitude, :longitude
  validates :latitude, :longitude, numericality: { only_decimal: true }
  validates :description, length: {maximum: 1000}, allow_blank: true
end