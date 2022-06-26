module ApplicationHelper

  def current_user
    # memorisation -> have current user or ...
    @current_user || User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user #return boolean
  end
end
