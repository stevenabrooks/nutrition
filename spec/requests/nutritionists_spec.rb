require 'spec_helper'

describe "Nutritionists" do
  describe "GET /nutritionists" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get nutritionists_path
      response.status.should be(200)
    end
  end
end
