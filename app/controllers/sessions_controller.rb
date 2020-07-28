class SessionsController < ApplicationController
  include SessionsHelper

    def new 
      
    end
  
    # POST /users  -- Create the User Action
    def create
      @user = User.find_by(:email => params[:email])
      if @user
        #store user in session
        login(@user)
        redirect_to "/"
      else
        redirect_to "/login", :notice => "Couldn't find that email."
      end
    end

    def destroy
      reset_session
      redirect_to "/"
    end

end
