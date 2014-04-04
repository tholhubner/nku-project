class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  ## displays all of currently signed up users in the Bueller System
  # might later include only users who are currently signed in.
  def index
    @user = User.all
  end
  
  ## creates a new user upon submitting the sign up form
  # redirects user to index
  def create
    @user = User.create!(user_params)
    session[:user_id] = @user_id
    redirect_to users_path, notice: 'Hi, #{@user.username}. Welcome to the Car Place.'
  end
  
  private
  ## grabs all of the required user information needed for signup
  def user_params
    params.require(:user).permit!
  end
end
