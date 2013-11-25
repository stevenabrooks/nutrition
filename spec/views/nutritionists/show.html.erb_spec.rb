require 'spec_helper'

describe "nutritionists/show" do
  before(:each) do
    @nutritionist = assign(:nutritionist, stub_model(Nutritionist,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Practice/)
    rendered.should match(/Specialties/)
    rendered.should match(/MyText/)
    rendered.should match(/Degrees/)
    rendered.should match(/Title/)
    rendered.should match(/Email/)
    rendered.should match(/Website/)
    rendered.should match(/Expertise/)
    rendered.should match(/Education/)
    rendered.should match(/Awards/)
  end
end
