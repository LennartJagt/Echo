require 'spec_helper'

describe "practices/index" do
  before(:each) do
    assign(:practices, [
      stub_model(Practice,
        :name => "Name",
        :telephone => "Telephone",
        :vat_number => "Vat Number",
        :email_address => "Email Address",
        :bank_account_number => "Bank Account Number",
        :owner_first_name => "Owner First Name",
        :owner_last_name => "Owner Last Name"
      ),
      stub_model(Practice,
        :name => "Name",
        :telephone => "Telephone",
        :vat_number => "Vat Number",
        :email_address => "Email Address",
        :bank_account_number => "Bank Account Number",
        :owner_first_name => "Owner First Name",
        :owner_last_name => "Owner Last Name"
      )
    ])
  end

  it "renders a list of practices" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Telephone".to_s, :count => 2
    assert_select "tr>td", :text => "Vat Number".to_s, :count => 2
    assert_select "tr>td", :text => "Email Address".to_s, :count => 2
    assert_select "tr>td", :text => "Bank Account Number".to_s, :count => 2
    assert_select "tr>td", :text => "Owner First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Owner Last Name".to_s, :count => 2
  end
end
