class ApplicationController < ActionController::Base
  helper_method :logged_in?
  helper_method :current_user
  
  def home 
    @hide_header = true 
  end 

  private 

  def current_user 
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end 

  def logged_in?
    !!current_user
  end 

  def authenticate_user 
    if !logged_in?
      redirect_to root_path
    end
  end 

end