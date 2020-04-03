require 'rails_helper'

RSpec.describe "When I visit a mechanics index page", type: :feature do
  it "I see a header saying All Mechanics and see mechanics names and years of experience" do

    visit "/mechanics"

    expect(page).to have_content("All Mechanics")
  end
end
