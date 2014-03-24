require 'spec_helper'

describe "animals/edit" do
  before(:each) do
    @animal = assign(:animal, stub_model(Animal,
      :name => "MyString",
      :specie => "MyString",
      :owner_last_name => "MyString"
    ))
  end

  it "renders the edit animal form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", animal_path(@animal), "post" do
      assert_select "input#animal_name[name=?]", "animal[name]"
      assert_select "input#animal_specie[name=?]", "animal[specie]"
      assert_select "input#animal_owner_last_name[name=?]", "animal[owner_last_name]"
    end
  end
end
