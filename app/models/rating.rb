class Rating < ApplicationRecord
  belongs_to :rides
  has_many :hitchhikers, :through => :rides
  has_many :drivers, :through => :rides
end
