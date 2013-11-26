require 'spec_helper'

describe "n_degrees/show" do
  before(:each) do
    @n_degree = assign(:n_degree, stub_model(NDegree,
      :nutritionist_id => 1,
      :degree_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
