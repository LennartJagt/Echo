require 'spec_helper'

describe "practices/show" do
  before(:each) do
    @practice = assign(:practice, stub_model(Practice,
      :name => "Name",
      :telephone => "Telephone",
      :vat_number => "Vat Number",
      :email_address => "Email Address",
      :bank_account_number => "Bank Account Number",
      :owner_first_name => "Owner First Name",
      :owner_last_name => "Owner Last Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Telephone/)
    rendered.should match(/Vat Number/)
    rendered.should match(/Email Address/)
    rendered.should match(/Bank Account Number/)
    rendered.should match(/Owner First Name/)
    rendered.should match(/Owner Last Name/)
  end
end
