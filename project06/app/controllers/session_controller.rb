class SessionController < ApplicationController  
  def new
  end

  def create
		logout_keeping_session!
		user = User.authenticate(parems[:username], params[:password])
	 
		if user
			self.current_user = user
			redirect_to root_url, notice: "Logged in successfully"
		else
			@username = params[:username]
			flash[:notice] = "Invalid username and/or password"
			render :action => 'new'	 
		end
  end

  def destroy
    logout_killing_session!
    redirect_to games_path, notice: "Logged out"
  end
end
