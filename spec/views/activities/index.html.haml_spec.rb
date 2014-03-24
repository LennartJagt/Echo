require 'spec_helper'

describe "activities/index" do
  before(:each) do
    assign(:activities, [
      stub_model(Activity,
        :name => "Name",
        :price => 1.5,
        :animal_specie => "Animal Specie"
      ),
      stub_model(Activity,
        :name => "Name",
        :price => 1.5,
        :animal_specie => "Animal Specie"
      )
    ])
  end

  it "renders a list of activities" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Animal Specie".to_s, :count => 2
  end
end
