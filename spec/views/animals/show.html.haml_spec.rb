require 'spec_helper'

describe "animals/show" do
  before(:each) do
    @animal = assign(:animal, stub_model(Animal,
      :name => "Name",
      :specie => "Specie",
      :owner_last_name => "Owner Last Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Specie/)
    rendered.should match(/Owner Last Name/)
  end
end
