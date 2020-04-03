require 'rails_helper'

RSpec.describe "When I visit a mechanics index page", type: :feature do
  it "I see a header saying All Mechanics and see mechanics names and years of experience" do

    mechanic_1 = Mechanic.create!(name: "Sam Mills", experience: 10)
    mechanic_2 = Mechanic.create!(name: "Kara Smith", experience: 11)


    visit "/mechanics"

    expect(page).to have_content("All Mechanics")
    
    expect(page).to have_content("Sam Mills")
    expect(page).to have_content("10 years of experience")

    expect(page).to have_content("Kara Smith")
    expect(page).to have_content("11 years of experience")
  end
end
