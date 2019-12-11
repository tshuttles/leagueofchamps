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

end 