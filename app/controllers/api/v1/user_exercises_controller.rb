class Api::V1::UserExercisesController < ApplicationController
  def index
    @user_exercises = UserExercise.all
    render json: @user_exercises
  end
  def create
    @user_exercise = UserExercise.new(user_exercise_params)
    render json: @user_exercise
  end
  def update
    @user_exercise.update(user_exercise_params)
    render json: @user_exercise
  end
  def destroy
    @user_xercise = UserExercise.destroy
    render json: {message: "removed"}, status: :ok
  end

  private
  def eser_xercise_params
    params.require(:user_exrcise).permit(
      :reps,
      :sets,
      :weight,
      :user_id,
      :exercise_id
    )
  end
  def find_user_exercise
    @user_exercise = UserExercise.find(params[:id])
  end 
end
