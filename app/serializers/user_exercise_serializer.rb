class UserExerciseSerializer < ActiveModel::Serializer
  attributes :id, :reps, :sets, :weight
  belongs_to :exercise
end
