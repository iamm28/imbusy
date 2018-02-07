class Api::V1::UsersController < ApplicationController

def index
  @users = User.all
  render json: @users
end

def create
  @user = User.create(user_params)
  render json: @user, status: 201
end

def new
  @user = User.new
end

def show
  @user = User.find(params[:id])
  render json: @user, status: 200
end

private
def user_params
  params.require(:user).permit(:full_name, :email, :password, :password_confirmation)
end


end
