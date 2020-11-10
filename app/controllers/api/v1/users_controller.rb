class Api::V1::UsersController < ApplicationController

  before_action :find_user

  def show
    render json: @user
  end

  def create
    user = User.create(user_params(:name, :age, :email, :bio))
    render json: user
  end

  def update
	  @user.update(user_params(:name))
    render json: @user
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params(*args)
		params.require(:user).permit(*args)
  end
  
end
