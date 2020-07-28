class RidesController < ApplicationController
  before_action :logged_in?

  def new
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

end
