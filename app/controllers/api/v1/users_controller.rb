class Api::V1::UsersController < ApplicationController
  skip_before_action :authorize_request, only: :create

  def create
    user = User.create!(user_params)
    auth_token = AuthenticateUser.new(user.email, user.password).call
    response = { message: Message.account_created, auth_token: auth_token }
    json_response(response, :created)
  end

  def index
    @users = User.all
    render json: @users, each_serializer: UserSerializer
  end

  def show
    render json: @user
  end
  
  private

  def user_params
    params.permit(
      :name,
      :email,
      :password,
      :password_confirmation
    )
  end
end
