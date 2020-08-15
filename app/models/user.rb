class User < ApplicationRecord
    # ActiveRecord automatically includes ActiveModel::SecurePassword
    has_secure_password
    # has_secure_password :recovery_password, validations: false
  
    has_many :cars

    # Alias Associations
    has_many :rides
    # REMOVED FOLLOWING TWO LINES AND REPLACED CODE WITH LINE ABOVE
    # # # has_many :rides, foreign_key: "hitchhiker_id", class_name: "Ride"
    # # # has_many :rides, foreign_key: "driver_id", class_name: "Ride"
    has_many :trips
    has_many :drives

    # has_many :rides_received (:ride_id), foreign_key_alias :ride_received_id, through :trips, source :rides
    # has_many :ratings, through :rides, foreign_key3 :ride_id
    # has_many :comments_given, through :rides, source :comments, foreign_key4 :comment_id 
    # has_many :comments_received, through :rides, source :comments, foreign_key4 :comment_id

    # Self-Referencing
    has_many :hitchhikers, class_name: "User", foreign_key: "hitchhiker_user_id", through: :rides
    has_many :drivers, class_name: "User", foreign_key: "driver_user_id", through: :rides
end
  