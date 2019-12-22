class SessionsController < ApplicationController 

  def login
    @user = User.new 
  end 

  def create 
    @user = User.find_by(name: params[:user][:name])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id 
      flash[:success] = "Welcome, #{@user.name}"
      redirect_to user_path(@user)
    else 
      flash[:error] = "Incorrect login attempt. Please try again."
      redirect_to login_path 
    end 
  end 

  def destroy 
    session.delete :user_id 
    redirect_to root_path
  end 

  def omniauth
    @user = User.from_omniauth(auth)
    @user.save
    session[:user_id] = @user.id
    redirect_to user_path(@user)
  end

  private

  def auth
    request.env['omniauth.auth']
  end

end 