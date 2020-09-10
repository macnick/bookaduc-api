class UsersController < ApplicationController
  before_action :set_user, only: [:index, :show]

  def index
    @users = User.all
    json_response(@users)
  end

  def create
    @user = User.new(user_params)
    if @user.save
      json_response(@user, :created)
    else
      json_response(@user.errors, :unprocessable_entity)
    end
  end

  def show
    json_response(@user)
  end

  def update
    @user.update(user_params)
    head :no_content
  end

  private

  def user_params
    # whitelist params
    params.permit(:name, :displacement, :power, :torque, :weight, :image)
  end

  def set_user
    @user = User.find(params[:id])
  end

end
