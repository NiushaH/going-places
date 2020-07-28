class RidesController < ApplicationController
  before_action :authentication_required

  def new
  end

  def index
    @rides = Ride.all
    # logic for index is on ERB page instead of in controller (e.g. status method, see minute 43 in https://www.youtube.com/watch?v=JfJ8qG-E1Og)
    # what's a best practice?
  end

  # acting as an edit form
  def show
    @ride = Ride.find(params[:id])
  end

  def update
    @ride = Ride.find(params[:id])
    #make sure code is describing what it's doing, not how it's doing it
    if @ride.accepted_by(current_user.id)
      redirect_to @ride
    else
      render :index
    end
  end

  def create
    @ride = Ride.new
    @ride.departure = params["Departure Address"]
    @ride.destination = params["Destination Address"]
    @ride.hitchhiker_user_id = @current_user.id
    @ride.driver_user_id = 0
    if @ride.save
      # REDIRECT TO USERS SHOW PAGE
      redirect_to "/"
    else
      raise @ride.errors.inspect
    end
  end

  private
  # Strong params is required only when you are assigning mass data.
  # User.new(params[:user])  # Won't Work!!
  # User.new({:name => "Avi", :email => "avi@flatiron.com"})
  # @user.update({:name => "Avi", :email => "avi@flatiron.com"})  
  # @user.update(params)  # RAILS WILL STOP YOU HERE 
  # params.require(:user).permit(:name, :email)  # RAILS WILL MAKE YOU DO THIS
  # User.new(user_params)  # Sanitized

  def ride_params
  end
end
