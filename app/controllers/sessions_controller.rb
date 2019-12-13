class SessionsController < ApplicationController 

  def login
    @user = User.new 
  end 

  def create 
    @user = User.find_by(name: params[:user][:name])
    if @user && user.authenticate[:user][:password] 
      session[:user_id] = @user.id 
      redirect_to user_path(@user)
    else 
      render 'login' 
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
    redirect_to home_path
  end

  private

  def auth
    request.env['omniauth.auth']
  end

end 