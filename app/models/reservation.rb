class Reservation < ApplicationRecord
  #Associations
  belongs_to :course
  belongs_to :user

  #Validations
  validates :user_id, :academy_id, :course_id, uniqueness
  validates :user_id, :academy_id, :course_id, presence: true
end
