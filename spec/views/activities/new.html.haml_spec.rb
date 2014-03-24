require 'spec_helper'

describe "activities/new" do
  before(:each) do
    assign(:activity, stub_model(Activity,
      :name => "MyString",
      :price => 1.5,
      :animal_specie => "MyString"
    ).as_new_record)
  end

  it "renders new activity form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", activities_path, "post" do
      assert_select "input#activity_name[name=?]", "activity[name]"
      assert_select "input#activity_price[name=?]", "activity[price]"
      assert_select "input#activity_animal_specie[name=?]", "activity[animal_specie]"
    end
  end
end
