require 'rails_helper'

RSpec.describe Park, type: :model do
  describe "relationships" do
    it {should have_many :rides}
  end
end

RSpec.describe ("#average_rating") do
  it "Should be able to return an average rating of rides at that park" do


    park_1 = Park.create!(name: "Hershey Park", price: 50)

    ride_1 = park_1.rides.create!(name: "The Frog Hopper", thrill_rating: 7)
    ride_2 = park_1.rides.create!(name: "Farenheit", thrill_rating: 9)

    expect(park_1.average_ride_rating.round(1)).to eq(8)
  end
end
