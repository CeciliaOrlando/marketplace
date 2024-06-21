class Course < ApplicationRecord
  belongs_to :academy
  has_many_attached :photos
  has_many :reservations

  def owner?(user)
    self.academy.user == user
  end
end
