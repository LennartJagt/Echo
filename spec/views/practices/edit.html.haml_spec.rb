require 'spec_helper'

describe "practices/edit" do
  before(:each) do
    @practice = assign(:practice, stub_model(Practice,
      :name => "MyString",
      :telephone => "MyString",
      :vat_number => "MyString",
      :email_address => "MyString",
      :bank_account_number => "MyString",
      :owner_first_name => "MyString",
      :owner_last_name => "MyString"
    ))
  end

  it "renders the edit practice form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", practice_path(@practice), "post" do
      assert_select "input#practice_name[name=?]", "practice[name]"
      assert_select "input#practice_telephone[name=?]", "practice[telephone]"
      assert_select "input#practice_vat_number[name=?]", "practice[vat_number]"
      assert_select "input#practice_email_address[name=?]", "practice[email_address]"
      assert_select "input#practice_bank_account_number[name=?]", "practice[bank_account_number]"
      assert_select "input#practice_owner_first_name[name=?]", "practice[owner_first_name]"
      assert_select "input#practice_owner_last_name[name=?]", "practice[owner_last_name]"
    end
  end
end
