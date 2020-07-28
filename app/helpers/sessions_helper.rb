module SessionsHelper

  def login(user)
    session[:current_user_id] = @user.id
  end
  
  def logout(user)
    session
  end

end
