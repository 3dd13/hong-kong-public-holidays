require 'spec_helper'

describe "HkPublicHolidays" do
  describe "GET /hk_public_holidays" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get hk_public_holidays_path
      response.status.should be(200)
    end
  end
end
