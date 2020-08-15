class UsersController < ApplicationController

    # GET /signup  -- New User Action
    def new 
      if logged_in?
        redirect_to "/", :notice => "Already logged in!"
      end
    end
  
    # POST /users  -- Create the User Action
    def create
      @user = User.new
      @user.name = params[:name]
      @user.email = params[:email]
      @user.password = params[:password]

      if @user.save
        redirect_to "/login"
      else
        render :new
      end
    end
    
    def show
      raise "User's show page".inspect
    end
end
