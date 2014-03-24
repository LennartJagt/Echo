require 'spec_helper'

describe "animals/new" do
  before(:each) do
    assign(:animal, stub_model(Animal,
      :name => "MyString",
      :specie => "MyString",
      :owner_last_name => "MyString"
    ).as_new_record)
  end

  it "renders new animal form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", animals_path, "post" do
      assert_select "input#animal_name[name=?]", "animal[name]"
      assert_select "input#animal_specie[name=?]", "animal[specie]"
      assert_select "input#animal_owner_last_name[name=?]", "animal[owner_last_name]"
    end
  end
end
