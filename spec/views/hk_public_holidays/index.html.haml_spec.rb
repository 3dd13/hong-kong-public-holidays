require 'spec_helper'

describe "hk_public_holidays/index.html.haml" do
  before(:each) do
    assign(:hk_public_holidays, [
      stub_model(HkPublicHoliday,
        :year => 1
      ),
      stub_model(HkPublicHoliday,
        :year => 1
      )
    ])
  end

  it "renders a list of hk_public_holidays" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
