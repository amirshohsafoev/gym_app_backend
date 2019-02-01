class CreateExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :exercises do |t|
      t.string :exercise_name
      t.string :description
      t.integer :base_reps
      t.integer :base_sets
      t.integer :base_weight
      t.string :picture1_url
      t.string :picture2_url
      t.references :part_of_the_body, foreign_key: true

      t.timestamps
    end
  end
end
