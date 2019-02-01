class Api::V1::UsersController < ApplicationController
  before_action :find_user, only: [:update, :destroy]

  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.create(user_params)
    render json: @user, status: :accepted
  end

  def update
    @user.update(user_params)
    if @user.save
      render json: @user, status: :accepted
    else
      render json: {errors: @user.error.full_messages }, status: :unproccessible_entitiy
    end
  end

  def destroy
    @user = User.destroy
    render json: {messages: "removed"}, status: :ok
  end


  private

  def user_params
    params.require(:user).permit(
      :first_name,
      :last_name,
      :picture_url,
       :email,
       :age,
       :weight,
       :height,
       :password_digest)
  end
  def find_user
    @user = User.find(params[:id])
  end

end
