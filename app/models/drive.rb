class Drive < ApplicationRecord
  belongs_to :driver, class_name: "User"
  belongs_to :car

  has_many :rides
  has_many :hitchhikers, class_name: "User", through: :rides
end
