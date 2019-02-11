class UserExercise < ApplicationRecord
  belongs_to :user
  belongs_to :exercise
  belongs_to :part_of_the_body
  
  # , through: :exercise
end
