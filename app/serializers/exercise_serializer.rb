class ExerciseSerializer < ActiveModel::Serializer
  attributes :id, :exercise_name, :description, :base_reps, :base_sets, :base_weight, :picture1_url, :picture2_url, :part_of_the_body
  # belongs_to :part_of_the_body
  # has_many :users
  # has_many :user_exercises
end
