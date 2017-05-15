class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(name: params[:user][:name])
    if user && user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      redirect_to(user_path(user))
    else
      redirect_to (root_path flash[:message] = "Please use valid credentials")
    end
  end

  def destoy
    session.delete :user_id

    redirect_to root_path
  end
end