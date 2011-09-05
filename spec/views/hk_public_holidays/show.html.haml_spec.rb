require 'spec_helper'

describe "hk_public_holidays/show.html.haml" do
  before(:each) do
    @hk_public_holiday = assign(:hk_public_holiday, stub_model(HkPublicHoliday,
      :year => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
