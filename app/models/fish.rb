class Fish < ApplicationRecord
  has_many :populations
  has_many :bodies, through: :populations
  has_one_attached :fish_image
  validates :name, presence: true, length: {maximum: 255}
  validates :description, length: {maximum: 1000}, allow_blank: true
  validates :fish_image, file_size: { less_than_or_equal_to: 10.megabytes },
            file_content_type: { allow: ['image/jpeg', 'image/png', 'image/jpg'] } 
  accepts_nested_attributes_for :populations, reject_if: :all_blank, allow_destroy: true

end