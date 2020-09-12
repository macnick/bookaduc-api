class Api::V1::UsersController < Api::V1::ApiController
  before_action :set_user, only: [:show]

  def index
    @users = User.all
    render json: @users, each_serializer: UserSerializer
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
    params.permit(:name, :password)
  end

  def set_user
    @user = User.find(params[:id])
  end

end
