class Trip < ApplicationRecord
  # Alias Associations
  # Self-Referencing
  belongs_to :hitchhiker_user, :class_name => "User"
  # user-friendliness feature -- add list of possible drivers and hitchhiker can select one
  belongs_to :driver_user, :class_name => "User", :optional => true
  
end


p = Trip.new
p.hitchhiker_user_id = 2
p.driver_user_id = 3
p.save

Trip.active  # => Return all the open trip requests without drivers matched for rides
