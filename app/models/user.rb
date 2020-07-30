class User < ApplicationRecord
  # ActiveRecord automatically includes ActiveModel::SecurePassword
  has_secure_password
  # has_secure_password :recovery_password, validations: false
#   has_many :cars
#   has_many :drives
#   has_many :trips
  has_many :rides_needed, :class_name => "Trip", :foreign_key => "hitchhiker_user_id"
  has_many :rides_given, :class_name => "Drive", :foreign_key => "driver_user_id"
#   has_many :rides_received (:ride_id), foreign_key_alias :ride_received_id, through :trips, source :rides
#   has_many :ratings, through :rides, foreign_key3 :ride_id
#   has_many :comments_given, through :rides, source :comments, foreign_key4 :comment_id 
#   has_many :comments_received, through :rides, source :comments, foreign_key4 :comment_id


end
