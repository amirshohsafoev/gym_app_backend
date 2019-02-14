class Api::V1::UserExercisesController < ApplicationController
  skip_before_action :authorized, only: [:index]
  before_action :find_user_exercise, only: [:update, :destroy]
  def index
    @user_exercises = UserExercise.all
    render json: @user_exercises
  end
  def create
    # byebug
    @user_exercise = UserExercise.create(user_exercise_params)
    render json: @user_exercise
  end
  def update
    # byebug
    @user_exercise.update(user_exercise_params)
    render json: @user_exercise
  end
  def destroy
    @user_exercise = UserExercise.destroy
    render json: {message: "removed"}, status: :ok
  end

  private
  def user_exercise_params
    params.require(:user_exercise).permit(
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
