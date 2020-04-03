require 'rails_helper'

RSpec.describe Mechanic, type: :model do
  describe "relationships" do
    it {should have_many :mechanic_rides}
    it {should have_many(:rides).through(:mechanic_rides)}
  end
end

RSpec.describe "#current_rides" do
  it "should return the number of rides a mechanic has" do

    mechanic_1 = Mechanic.create!(name: "Sam Mills", experience: 10)
    mechanic_2 = Mechanic.create!(name: "Kara Smith", experience: 11)

    park_1 = Park.create!(name: "Hershey Park", price: 50)

    ride_1 = park_1.rides.create!(name: "The Frog Hopper", thrill_rating: 7)
    ride_2 = park_1.rides.create!(name: "Farenheit", thrill_rating: 9)
    ride_3 = park_1.rides.create!(name: "The Kiss Raise", thrill_rating: 9)

    MechanicRide.create!(mechanic_id: mechanic_2.id, ride_id: ride_1.id)
    MechanicRide.create!(mechanic_id: mechanic_2.id, ride_id: ride_2.id)
    MechanicRide.create!(mechanic_id: mechanic_2.id, ride_id: ride_3.id)

    expect(mechanic_2.current_rides.length).to eq (3)

  end
end
