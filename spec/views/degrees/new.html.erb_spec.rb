require 'spec_helper'

describe "degrees/new" do
  before(:each) do
    assign(:degree, stub_model(Degree,
      :title => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new degree form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => degrees_path, :method => "post" do
      assert_select "input#degree_title", :name => "degree[title]"
      assert_select "textarea#degree_description", :name => "degree[description]"
    end
  end
end
