class Api::V1::UsersController < ApplicationController

  before_action :find_user, except: [:index]

  def index
    @users = User.all
    render json: @users, each_serializer: UserEmailSerializer
  end

  def show
    render json: @user, serializer: CompleteUserSerializer
  end

  def create
    user = User.create(user_params(:name, :age, :email, :bio, :profile_photo))
    render json: user
  end

  def update
	  @user.update(user_params(:name, :age, :bio, :profile_photo))
    render json: @user
  end

  def destroy
    @user.destroy
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params(*args)
		params.require(:user).permit(*args)
  end
  
end
