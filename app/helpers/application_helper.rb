module ApplicationHelper

  # HELPERS / METHODS USED IN OTHER ACTIONS
  def current_user
    if session[:current_user_id]
    # Memoization = cheap caching so that database isn't called every time a web request is sent 
      @current_user ||= User.find(session[:current_user_id])
    end
  end

  def logged_in?
    # current_user ? true : false
    !!current_user
  end

  private
  def authentication_required
    if !logged_in?
      redirect_to "/login"
    end
  end
end
