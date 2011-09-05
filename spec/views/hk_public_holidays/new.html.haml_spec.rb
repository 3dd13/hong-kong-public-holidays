require 'spec_helper'

describe "hk_public_holidays/new.html.haml" do
  before(:each) do
    assign(:hk_public_holiday, stub_model(HkPublicHoliday,
      :year => 1
    ).as_new_record)
  end

  it "renders new hk_public_holiday form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => hk_public_holidays_path, :method => "post" do
      assert_select "input#hk_public_holiday_year", :name => "hk_public_holiday[year]"
    end
  end
end
