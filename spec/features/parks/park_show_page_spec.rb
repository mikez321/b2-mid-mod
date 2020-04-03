require 'rails_helper'

RSpec.describe "when I visit a parks show page I see the name and price of admission", type: :feature do
  it "I also see the names of rides at the park in alphabetical order" do

    park_1 = Park.create!(name: "Hershey Park", price: 50)

    ride_1 = park_1.rides.create!(name: "Lightning Racer", thrill_rating: 7)
    ride_2 = park_1.rides.create!(name: "Storm Runner", thrill_rating: 9)
    ride_3 = park_1.rides.create!(name: "The Great Bear", thrill_rating: 9)

    visit "/parks/#{park_1.id}"

    expect(page).to have_content("Hershey Park")
    expect(page).to have_content("Admissions: $50.00")

    expect(page).to have_content("Lightning Racer")
    expect(page).to have_content("Storm Runner")

    expect(page).to have_content("Average Thrill Rating of Rides: 8.3/10")
  end
end
