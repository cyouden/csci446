class ApplicationController < ActionController::Base
  protect_from_forgery
	helper_method :current_user
  before_filter :set_current_user
	helper_method :current_user, :logged_in?
	
	include authlogic
	
	protected
	
	def permission_denied
		flash[:error] = "Sorry, you are not allowed to access that page."
		redirect_to root_url
	end
	
	def set_current_user
		Authorization.current_user = current_user
	end
end
