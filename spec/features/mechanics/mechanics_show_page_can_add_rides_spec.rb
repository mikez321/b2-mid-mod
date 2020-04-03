require 'rails_helper'

RSpec.describe "when I visit a mechanics show page", type: :feature do
  describe "there is a form wehre i can add rides" do
    it "and when I fill it out and click submit I am taken back the show page and see the new ride" do

    mechanic_1 = Mechanic.create!(name: "Sam Mills", experience: 10)
    mechanic_2 = Mechanic.create!(name: "Kara Smith", experience: 11)

    park_1 = Park.create!(name: "Hershey Park", price: 50)

    ride_1 = park_1.rides.create!(name: "The Frog Hopper", thrill_rating: 7)
    ride_2 = park_1.rides.create!(name: "Farenheit", thrill_rating: 9)
    ride_3 = park_1.rides.create!(name: "The Kiss Raise", thrill_rating: 9)
    ride_4 = park_1.rides.create!(name: "Lightning Racer", thrill_rating: 8)

    MechanicRide.create!(mechanic_id: mechanic_2.id, ride_id: ride_1.id)
    MechanicRide.create!(mechanic_id: mechanic_2.id, ride_id: ride_2.id)
    MechanicRide.create!(mechanic_id: mechanic_2.id, ride_id: ride_3.id)

    visit "mechanics/#{mechanic_2.id}"

    expect(page).to have_content("Lightning Racer, ID: #{ride_4.id}")
    end
  end
end
