require 'spec_helper'

describe "animals/index" do
  before(:each) do
    assign(:animals, [
      stub_model(Animal,
        :name => "Name",
        :specie => "Specie",
        :owner_last_name => "Owner Last Name"
      ),
      stub_model(Animal,
        :name => "Name",
        :specie => "Specie",
        :owner_last_name => "Owner Last Name"
      )
    ])
  end

  it "renders a list of animals" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Specie".to_s, :count => 2
    assert_select "tr>td", :text => "Owner Last Name".to_s, :count => 2
  end
end
