class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users, each_serializer: UserSerializer
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def show
    render json: @user
  end

  def update
    @user.update(user_params)
    head :no_content
  end

  private

  def user_params
    # whitelist params
    params.require(:user).permit(:name, :password)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
