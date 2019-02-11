class UserExercise < ApplicationRecord
  belongs_to :user
  belongs_to :exercise
  has_one :part_of_the_body, through: :exercise
end
