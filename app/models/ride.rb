class Ride < ApplicationRecord
  belongs_to :park
  has_many :mechanic_rides
end
