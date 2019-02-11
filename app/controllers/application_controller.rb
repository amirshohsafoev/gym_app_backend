class ApplicationController < ActionController::API
  before_action :authorized

  def issue_token(payload)
    JWT.encode(payload, 'mYw3bT0K3n')
  end

  def auth_header
    request.headers['Authorization']
  end

  def decoded_token
    if auth_header
      token = auth_header
      begin
        JWT.decode(token, 'mYw3bT0K3n', true, algorithm: 'HS256')
      rescue JWT::DecodeError
        nil
      end
    end
  end

  def current_user
    if decoded_token
      user_id = decoded_token[0]['user_id']
      @user = User.find(user_id)
    else
      nil
    end
  end

  def logged_in?
    !!current_user
  end

  def authorized
    # byebug
    if !logged_in?
      render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
    end
  end
end
