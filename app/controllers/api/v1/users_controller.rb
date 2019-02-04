class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:index, :create]
  before_action :find_user, only: [:update, :destroy]

  def index
    @users = User.all
    render json: @users
  end
  def profile
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
end

def create
  params.require(:user).permit(
    :first_name,
    :last_name,
    :picture_url,
     :email,
     :age,
     :weight,
     :height,
     :password_digest)
  @user = User.create(first_name: params[:first_name],
    last_name: params[:last_name],
    picture_url: params[:picture_url],
    email: params[:email],
    age: params[:age],
    weight: params[:weight],
    height: params[:height],
    password_digest: params[:password_digest])
  if @user.valid?
    @token = JWT.encode({password_digest: @user.password_digest}, 'mYw3bT0K3n')
    render json: { user: @user, jwt: @token }, status: :created
  else
    render json: { error: 'failed to create user' }, status: :not_acceptable
  end
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
