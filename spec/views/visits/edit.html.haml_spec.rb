require 'spec_helper'

describe "visits/edit" do
  before(:each) do
    @visit = assign(:visit, stub_model(Visit,
      :date => "MyString",
      :datetime => "MyString",
      :practice_id => 1,
      :activity_id => 1
    ))
  end

  it "renders the edit visit form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", visit_path(@visit), "post" do
      assert_select "input#visit_date[name=?]", "visit[date]"
      assert_select "input#visit_datetime[name=?]", "visit[datetime]"
      assert_select "input#visit_practice_id[name=?]", "visit[practice_id]"
      assert_select "input#visit_activity_id[name=?]", "visit[activity_id]"
    end
  end
end
