require 'spec_helper'

describe "visits/index" do
  before(:each) do
    assign(:visits, [
      stub_model(Visit,
        :date => "Date",
        :datetime => "Datetime",
        :practice_id => 1,
        :activity_id => 2
      ),
      stub_model(Visit,
        :date => "Date",
        :datetime => "Datetime",
        :practice_id => 1,
        :activity_id => 2
      )
    ])
  end

  it "renders a list of visits" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Date".to_s, :count => 2
    assert_select "tr>td", :text => "Datetime".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
