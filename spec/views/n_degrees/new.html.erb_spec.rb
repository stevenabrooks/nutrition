require 'spec_helper'

describe "n_degrees/new" do
  before(:each) do
    assign(:n_degree, stub_model(NDegree,
      :nutritionist_id => 1,
      :degree_id => 1
    ).as_new_record)
  end

  it "renders new n_degree form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => n_degrees_path, :method => "post" do
      assert_select "input#n_degree_nutritionist_id", :name => "n_degree[nutritionist_id]"
      assert_select "input#n_degree_degree_id", :name => "n_degree[degree_id]"
    end
  end
end
