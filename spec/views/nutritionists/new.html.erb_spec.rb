require 'spec_helper'

describe "nutritionists/new" do
  before(:each) do
    assign(:nutritionist, stub_model(Nutritionist,
      :name => "MyString",
      :practice => "MyString",
      :specialties => "MyString",
      :statement => "MyText",
      :degrees => "MyString",
      :title => "MyString",
      :email => "MyString",
      :website => "MyString",
      :expertise => "MyString",
      :education => "MyString",
      :awards => "MyString"
    ).as_new_record)
  end

  it "renders new nutritionist form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => nutritionists_path, :method => "post" do
      assert_select "input#nutritionist_name", :name => "nutritionist[name]"
      assert_select "input#nutritionist_practice", :name => "nutritionist[practice]"
      assert_select "input#nutritionist_specialties", :name => "nutritionist[specialties]"
      assert_select "textarea#nutritionist_statement", :name => "nutritionist[statement]"
      assert_select "input#nutritionist_degrees", :name => "nutritionist[degrees]"
      assert_select "input#nutritionist_title", :name => "nutritionist[title]"
      assert_select "input#nutritionist_email", :name => "nutritionist[email]"
      assert_select "input#nutritionist_website", :name => "nutritionist[website]"
      assert_select "input#nutritionist_expertise", :name => "nutritionist[expertise]"
      assert_select "input#nutritionist_education", :name => "nutritionist[education]"
      assert_select "input#nutritionist_awards", :name => "nutritionist[awards]"
    end
  end
end
