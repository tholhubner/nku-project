class SessionsController < ApplicationController
  def new
  end
  
  ## creates a session for the user that is signing in
  def create
    user = User.find_by(email: session_params[:email])
    if user
      session[:user_id] = user.id
      redirect_to users_path, notice: "Signed in!"
    else
      flash[:error] = "Invalid email or password"
      render :new
    end
  end
  
  ## destroys the users session upon logging out
  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Signed out!"
  end
  
  private
  def session_params
    params.require(:session).permit(:email, :password)
  end
end
