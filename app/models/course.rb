class Course < ApplicationRecord
  belongs_to :academy
  has_many_attached :photos
end