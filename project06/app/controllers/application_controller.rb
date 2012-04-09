class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authorize
  #filter_parameter_logging :password, :password_confirmation
  helper_method :current_user_session, :current_user
  
  protected
    def authorize
      unless User.find_by_id(session[:user_id])
        redirect_to login_url, notice: "Please log in"
      end
    end
    
  private
    def current_user_session
      return @current_user_session if defined?(@current_user_session)
      @current_user_session = UserSession.find
    end

    def current_user
      return @current_user if defined?(@current_user)
      @current_user = current_user_session && current_user_session.user
    end
end
