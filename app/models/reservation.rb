class Reservation < ApplicationRecord
  #Associations
  belongs_to :course
  belongs_to :user

  #Validations
  validates :user_id, :course_id, uniqueness: true
  validates :user_id, :course_id, presence: true
end
