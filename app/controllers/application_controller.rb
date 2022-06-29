class ApplicationController < ActionController::Base
  ## add to helper method but in application controller access by all controllers
  helper_method :current_user, :logged_in?

  def current_user
    # memorisation -> have current user or ...
    @current_user || User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user #return boolean
  end

  def require_user
    if !logged_in?
      flash[:alert] = "You must be logged in to perform that action"
      redirect_to login_path
    end
  end

end
