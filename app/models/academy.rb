class Academy < ApplicationRecord
  has_many :courses
  belongs_to :user
  has_one_attached :photo
end
