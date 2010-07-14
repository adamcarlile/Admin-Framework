class ApplicationController < ActionController::Base
  
  helper :all
  
  protect_from_forgery 

  filter_parameter_logging :password, :password_confirmation
  
  protected
  
    def logged_in?
      !!current_user
    end
    
    def current_user_session
      return @current_user_session if defined?(@current_user_session)
      @current_user_session = UserSession.find
    end
  
    def current_user
      return @current_user if defined?(@current_user)
      @current_user = current_user_session && current_user_session.record
    end
    helper_method :current_user, :logged_in?

    def require_user
      unless current_user
        session[:return_to] = request.request_uri
        flash[:notice] = "You must be logged in to access this page"
        redirect_to login_path
        return false
      end
    end

    def redirect_back_or_default(default)
      redirect_to(session[:return_to] || default)
      session[:return_to] = nil
    end  

    def access_denied
      flash[:error] = "You're not authorized to view that page"
      redirect_to login_path
      return false
    end
    
end
