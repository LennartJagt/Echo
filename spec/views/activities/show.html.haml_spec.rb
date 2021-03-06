require 'spec_helper'

describe "activities/show" do
  before(:each) do
    @activity = assign(:activity, stub_model(Activity,
      :name => "Name",
      :price => 1.5,
      :animal_specie => "Animal Specie"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1.5/)
    rendered.should match(/Animal Specie/)
  end
end
