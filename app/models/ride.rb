class Ride < ApplicationRecord
  belongs_to :trip
  belongs_to :drive

  # Alias Associations
  belongs_to :driver, class_name: "User", through: :drives
  belongs_to :hitchhiker, class_name: "User", through: :trips
  
  # def ride_created_by(user)
  #   # @ride.driver_user_id = @current_user.id
  #   self.update(:hitchhiker_user_id => user)
  # end

  def accepted_by(user)
    # @ride.driver_user_id = @current_user.id
    self.update(:driver_user_id => user)
  end
  
  def ride_still_needed?
    true if driver_user_id == 0
  end 
end
