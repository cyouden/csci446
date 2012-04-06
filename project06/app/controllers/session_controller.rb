class SessionController < ApplicationController
  skip_before_filter :authorize
  def new
  end

  def create
    user = User.find_by_username(params[:username])
    if user and user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to games_path
    else
      redirect_to login_url, notice: "Invalid username/password combination"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to games_path, notice: "Logged out"
  end

end
