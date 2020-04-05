class Park < ApplicationRecord
  has_many :rides

  def average_ride_rating
    rides.average(:thrill_rating)
  end
end
