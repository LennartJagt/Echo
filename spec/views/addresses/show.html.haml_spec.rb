require 'spec_helper'

describe "addresses/show" do
  before(:each) do
    @address = assign(:address, stub_model(Address,
      :street => "Street",
      :street_number => "Street Number",
      :zip_code => "Zip Code",
      :town => "Town"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Street/)
    rendered.should match(/Stree Number/)
    rendered.should match(/Zip Code/)
    rendered.should match(/Town/)
  end
end
