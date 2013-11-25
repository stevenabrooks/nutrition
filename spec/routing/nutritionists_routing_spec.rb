require "spec_helper"

describe NutritionistsController do
  describe "routing" do

    it "routes to #index" do
      get("/nutritionists").should route_to("nutritionists#index")
    end

    it "routes to #new" do
      get("/nutritionists/new").should route_to("nutritionists#new")
    end

    it "routes to #show" do
      get("/nutritionists/1").should route_to("nutritionists#show", :id => "1")
    end

    it "routes to #edit" do
      get("/nutritionists/1/edit").should route_to("nutritionists#edit", :id => "1")
    end

    it "routes to #create" do
      post("/nutritionists").should route_to("nutritionists#create")
    end

    it "routes to #update" do
      put("/nutritionists/1").should route_to("nutritionists#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/nutritionists/1").should route_to("nutritionists#destroy", :id => "1")
    end

  end
end
