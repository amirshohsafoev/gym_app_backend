class UserExerciseSerializer < ActiveModel::Serializer
  # belongs_to :part_of_the_body, through: :exercise
  attributes :id, :reps, :sets, :weight, :exercise
  belongs_to :user
  belongs_to :exercise
  # belongs_to :part_of_the_body, include_nested_associations: true
end
