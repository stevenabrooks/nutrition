require 'spec_helper'

describe "n_degrees/index" do
  before(:each) do
    assign(:n_degrees, [
      stub_model(NDegree,
        :nutritionist_id => 1,
        :degree_id => 2
      ),
      stub_model(NDegree,
        :nutritionist_id => 1,
        :degree_id => 2
      )
    ])
  end

  it "renders a list of n_degrees" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
