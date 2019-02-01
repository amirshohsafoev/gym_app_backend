class Exercise < ApplicationRecord
  belongs_to :part_of_the_body
  has_many :user_exercises, dependent: :destroy
  has_many :users, through: :user_exercises
end
