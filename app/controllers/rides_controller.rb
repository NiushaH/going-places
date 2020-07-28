class RidesController < ApplicationController
  before_action :authentication_required

  def new
  end

  def index
    @rides = Ride.all
  end

  def create
    @ride = Ride.new
    @ride.departure = params["Departure Address"]
    @ride.destination = params["Destination Address"]
    @ride.hitchhiker_user_id = @current_user.id
    if @ride.save
      redirect_to "/rides"
    else
      raise @ride.errors.inspect
    end
  end

  private
  # Strong params is required only when you are assigning mass data.
  # User.new(params[:user])  # Won't Work!!
  # User.new(user_params)  # Sanitized

  def ride_params
  end
end
