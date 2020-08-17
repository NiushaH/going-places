class User < ApplicationRecord
    # ActiveRecord automatically includes ActiveModel::SecurePassword
    has_secure_password
    # has_secure_password :recovery_password, validations: false
  
    has_many :cars
    has_many :trips

    has_many :rides
    # Self-Referencing
    has_many :drivers, class_name: "User", foreign_key: "driver_user_id", through: :rides

    has_many :ratings
    has_many :ratings_received, through: :ratings, through: :rides
    has_many :ratings_given, through: :ratings, through: :rides
    has_many :comments
    has_many :comments_received, through: :comments, through: :rides
    has_many :comments_given, through: :comments, through: :rides
end
  