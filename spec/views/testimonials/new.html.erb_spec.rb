require 'spec_helper'

describe "testimonials/new" do
  before(:each) do
    assign(:testimonial, stub_model(Testimonial,
      :nutritionist_id => 1,
      :text => "MyText"
    ).as_new_record)
  end

  it "renders new testimonial form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => testimonials_path, :method => "post" do
      assert_select "input#testimonial_nutritionist_id", :name => "testimonial[nutritionist_id]"
      assert_select "textarea#testimonial_text", :name => "testimonial[text]"
    end
  end
end
