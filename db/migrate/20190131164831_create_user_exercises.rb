class CreateUserExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :user_exercises do |t|
      t.integer :reps
      t.integer :sets
      t.integer :weight
      t.references :user, foreign_key: true
      t.references :exercise, foreign_key: true

      t.timestamps
    end
  end
end
