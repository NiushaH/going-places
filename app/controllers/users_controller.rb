class UsersController < ApplicationController

  # GET /signup  -- New User Action
  def new 
    if session[:current_user_id]
      redirect_to "/", :notice => "Already logged in!"
    end
  end

  # POST /users  -- Create the User Action
  def create
    @user = User.new
    @user.name = params[:name]
    @user.email = params[:email]
    # @user.password = params[:password]
    @user.save

    redirect_to "/login"
  end
  
  def show
    raise "User's show page".inspect
  end

end
