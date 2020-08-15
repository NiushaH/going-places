class ApplicationController < ActionController::Base
  include ApplicationHelper
  protect_from_forgery with: :exception
  
  # before_action runs before every single web request made in app
  before_action :current_user

  # ACTION / END POINT TO HTTP REQUEST
  def home
    @magic = "Surprise!"
  end

    
  def login(user)
    session[:current_user_id] = @user.id
  end
  
  def logout(user)
    session
  end


end
