class Reservation < ApplicationRecord
  #Associations
  belongs_to :course
  belongs_to :user

  #Validations
  # validates :user_id, :course_id, uniqueness: true # esta mal, un usuario puede toma mas de una vez el mismo curso
  # validates :user_id, :course_id, presence: true # no es necesario porque no se lo pide al usuario
end
