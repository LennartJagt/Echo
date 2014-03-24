require 'spec_helper'

describe "addresses/new" do
  before(:each) do
    assign(:address, stub_model(Address,
      :street => "MyString",
      :street_number => "MyString",
      :zip_code => "MyString",
      :town => "MyString"
    ).as_new_record)
  end

  it "renders new address form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", addresses_path, "post" do
      assert_select "input#address_street[name=?]", "address[street]"
      assert_select "input#address_street_number[name=?]", "address[street_number]"
      assert_select "input#address_zip_code[name=?]", "address[zip_code]"
      assert_select "input#address_town[name=?]", "address[town]"
    end
  end
end
