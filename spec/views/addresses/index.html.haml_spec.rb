require 'spec_helper'

describe "addresses/index" do
  before(:each) do
    assign(:addresses, [
      stub_model(Address,
        :street => "Street",
        :street_number => "Stree Number",
        :zip_code => "Zip Code",
        :town => "Town"
      ),
      stub_model(Address,
        :street => "Street",
        :street_number => "Street Number",
        :zip_code => "Zip Code",
        :town => "Town"
      )
    ])
  end

  it "renders a list of addresses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Street".to_s, :count => 2
    assert_select "tr>td", :text => "Street Number".to_s, :count => 2
    assert_select "tr>td", :text => "Zip Code".to_s, :count => 2
    assert_select "tr>td", :text => "Town".to_s, :count => 2
  end
end
