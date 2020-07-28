module ApplicationHelper

  def current_user
    if session[:current_user_id]
    # Memoization = cheap caching so that database isn't called every time a web request is sent 
      @current_user ||= User.find(session[:current_user_id])
    end
  end  
end
