class ApplicationController < ActionController::Base
  include ApplicationHelper
  
  # before_action runs before every single web request made in app
  before_action :current_user

  # ACTION / END POINT TO HTTP REQUEST
  def home
    @magic = "Surprise!"
  end
  
end
