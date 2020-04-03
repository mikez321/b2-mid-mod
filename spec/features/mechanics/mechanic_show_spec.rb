require 'rails_helper'

RSpec.describe "when I go to a mechanics show page" do
  it "I see their name experience and names of rides they are working on" do

    mechanic_1 = Mechanic.create!(name: "Sam Mills", experience: 10)
    mechanic_2 = Mechanic.create!(name: "Kara Smith", experience: 11)

    visit "mechanics/#{mechanic_2.id}"

    expect(page).to have_content("Mechanic: #{mechanic_2.name}")
    expect(page).to have_content("Years of Experience: #{mechanic_2.experience}")

  end
end
