class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id].present?
  end
  helper_method :current_user
  
  before_action :require_login
  
  skip_before_action :require_login, only: [:new, :create]
  
  def logged_in?
    current_user != nil
  end
  
  private
  def require_login
    unless logged_in?
      redirect_to signin_path
    end
  end
end
