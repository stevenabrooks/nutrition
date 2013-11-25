require 'spec_helper'

describe "nutritionists/index" do
  before(:each) do
    assign(:nutritionists, [
      stub_model(Nutritionist,
        :name => "Name",
        :practice => "Practice",
        :specialties => "Specialties",
        :statement => "MyText",
        :degrees => "Degrees",
        :title => "Title",
        :email => "Email",
        :website => "Website",
        :expertise => "Expertise",
        :education => "Education",
        :awards => "Awards"
      ),
      stub_model(Nutritionist,
        :name => "Name",
        :practice => "Practice",
        :specialties => "Specialties",
        :statement => "MyText",
        :degrees => "Degrees",
        :title => "Title",
        :email => "Email",
        :website => "Website",
        :expertise => "Expertise",
        :education => "Education",
        :awards => "Awards"
      )
    ])
  end

  it "renders a list of nutritionists" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Practice".to_s, :count => 2
    assert_select "tr>td", :text => "Specialties".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Degrees".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
    assert_select "tr>td", :text => "Expertise".to_s, :count => 2
    assert_select "tr>td", :text => "Education".to_s, :count => 2
    assert_select "tr>td", :text => "Awards".to_s, :count => 2
  end
end
