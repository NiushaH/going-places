module SessionsHelper

  def logged_in?
    # current_user ? true : false
    !!current_user
  end

  def login(user)
    session[:current_user_id] = @user.id
  end
  
  def logout(user)
    session
  end

end
