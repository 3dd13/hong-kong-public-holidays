require 'spec_helper'

describe "hk_public_holidays/edit.html.haml" do
  before(:each) do
    @hk_public_holiday = assign(:hk_public_holiday, stub_model(HkPublicHoliday,
      :year => 1
    ))
  end

  it "renders the edit hk_public_holiday form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => hk_public_holidays_path(@hk_public_holiday), :method => "post" do
      assert_select "input#hk_public_holiday_year", :name => "hk_public_holiday[year]"
    end
  end
end
