require 'rails_helper'

RSpec.describe Mechanic, type: :model do
  describe "relationships" do
    it {should have_many :mechanic_rides}
    it {should have_many(:rides).through(:mechanic_rides)}
  end
end

RSpec.describe "#all_rides" do
  it "should return all rides" do

    mechanic_1 = Mechanic.create!(name: "Sam Mills", experience: 10)

    park_1 = Park.create!(name: "Hershey Park", price: 50)

    ride_1 = park_1.rides.create!(name: "The Frog Hopper", thrill_rating: 7)
    ride_2 = park_1.rides.create!(name: "Farenheit", thrill_rating: 9)
    ride_3 = park_1.rides.create!(name: "The Kiss Raise", thrill_rating: 9)

    expect(mechanic_1.all_rides.length).to eq (3)
    expect(mechanic_1.all_rides.first.name).to eq ("The Frog Hopper")

  end
end
