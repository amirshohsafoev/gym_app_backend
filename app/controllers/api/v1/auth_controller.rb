class Api::V1::AuthController < ApplicationController
  skip_before_action :authorized, only: [:create]

    def create
      @user = User.find_by(email: user_login_params[:email])
      if @user && @user.authenticate(user_login_params[:password])
        @token = JWT.encode({ user_id: @user.id }, 'mYw3bT0K3n')
        # @token = encode_token({ user_id: @user.id })
        render json: { user: UserSerializer.new(@user), jwt: @token }, status: :accepted
      else
        render json: { message: 'Invalid username or password' }, status: :unauthorized
      end
    end

    def get_user
      token = auth_header
      user_id = JWT.decode(token, 'mYw3bT0K3n', true, algorithm: 'HS256')[0]['user_id']
      user = User.find(user_id)
      render json: UserSerializer.new(user)
    end

    private

    def user_login_params
      params.require(:auth).permit(:password, :email)
    end
end
