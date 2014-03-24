require 'spec_helper'

describe "visits/show" do
  before(:each) do
    @visit = assign(:visit, stub_model(Visit,
      :date => "Date",
      :datetime => "Datetime",
      :practice_id => 1,
      :activity_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Date/)
    rendered.should match(/Datetime/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
