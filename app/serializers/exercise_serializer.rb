class ExerciseSerializer < ActiveModel::Serializer
  attributes :id, :exercise_name, :description, :base_reps, :base_sets, :base_weight, :picture1_url, :picture2_url
  belongs_to :part_of_the_body
  has_many :users
end
