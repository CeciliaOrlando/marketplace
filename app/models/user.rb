class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :reservations
  has_many :academies
  has_many :courses, through: :reservations
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable
  has_one_attached :photo
end
