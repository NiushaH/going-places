class ApplicationController < ActionController::Base
  include ApplicationHelper
  
  # before_action runs before every single web request made in app
  before_action :current_user

  # ACTION / END POINT TO HTTP REQUEST
  def home
    @magic = "Surprise!"
  end

  # HELPERS / METHODS USED IN OTHER ACTIONS
  private
    def current_user
      if session[:current_user_id]
        @current_user = User.find(session[:current_user_id])
      end
    end  

end
