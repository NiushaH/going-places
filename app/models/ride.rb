class Ride < ApplicationRecord
  # Alias Associations
  # Self-Referencing
  belongs_to :hitchhiker_user, :class_name => "User"
  # user-friendliness feature -- add list of possible drivers and hitchhiker can select one
  belongs_to :driver_user, :class_name => "User", :optional => true

  def accepted_by(user)
    self.update(:driver_user_id => user)
  end

  def ride_matched_with_driver?
    true if driver_user_id != 0
  end

end



# ride = Ride.new
# ride.hitchhiker_user_id = 2
# ride.driver_user_id = 3
# ride.save
# ride.hitchhiker_user = User.find_by(:hitchhiker_user_id => params[:id])
# ride.hitchhiker_name = ride.hitchhiker_user.name


# Ride.active  # => Return all the open trip requests without drivers matched for rides
