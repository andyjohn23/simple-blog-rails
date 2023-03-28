class UsersController < ApplicationController
  def index
    users = User.all
    render json: users
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def create
    user = User.create!(find_user)
    session[:user_id] = user.id
    render json: user, status: :created
  end

  def update
    user = User.find(params[:id])
    user.update!(find_user)
    render json: user
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    head :no_content
  end

  private

  def find_user
    params.permit(:email, :username, :location, :password)
  end
end
