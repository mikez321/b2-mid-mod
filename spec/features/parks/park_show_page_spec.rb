require 'rails_helper'

RSpec.describe "when I visit a parks show page I see the name and price of admission", type: :feature do
  it "I also see the names of rides at the park in alphabetical order" do

    park_1 = Park.create!(name: "Hershey Park", admission: 50)

    visit "/parks/#{park_1.id}"

    expect(page).to have_content("Hershey Park")
    expect(page).to have_content("Admissions: $50.00")

  end
end
