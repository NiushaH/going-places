class Trip < ApplicationRecord
  belongs_to :hitchhiker, class_name: "User"

  has_many :rides
  has_many :drivers, class_name: "User", through: :rides
end
