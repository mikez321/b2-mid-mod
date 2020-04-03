require 'rails_helper'

describe Mechanic, type: :model do
  describe "relationships" do
    it {should have_many :mechanic_rides}
  end
end
