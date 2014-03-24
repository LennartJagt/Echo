require 'spec_helper'

describe "addresses/edit" do
  before(:each) do
    @address = assign(:address, stub_model(Address,
      :street => "MyString",
      :street_number => "MyString",
      :zip_code => "MyString",
      :town => "MyString"
    ))
  end

  it "renders the edit address form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", address_path(@address), "post" do
      assert_select "input#address_street[name=?]", "address[street]"
      assert_select "input#address_street_number[name=?]", "address[street_number]"
      assert_select "input#address_zip_code[name=?]", "address[zip_code]"
      assert_select "input#address_town[name=?]", "address[town]"
    end
  end
end
