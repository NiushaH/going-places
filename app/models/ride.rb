class Ride < ApplicationRecord
  has_one :driver
  has_one :car, through: :driver
  has_many :trips
  has_many :hitchhikers, through: :trips
 

  def accepted_by(user)
    # @ride.driver_user_id = @current_user.id
    self.update(:driver_user_id => user)
  end
  
  def ride_still_needed?
    true if driver_user_id == 0
  end 
end
