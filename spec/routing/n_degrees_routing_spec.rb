require "spec_helper"

describe NDegreesController do
  describe "routing" do

    it "routes to #index" do
      get("/n_degrees").should route_to("n_degrees#index")
    end

    it "routes to #new" do
      get("/n_degrees/new").should route_to("n_degrees#new")
    end

    it "routes to #show" do
      get("/n_degrees/1").should route_to("n_degrees#show", :id => "1")
    end

    it "routes to #edit" do
      get("/n_degrees/1/edit").should route_to("n_degrees#edit", :id => "1")
    end

    it "routes to #create" do
      post("/n_degrees").should route_to("n_degrees#create")
    end

    it "routes to #update" do
      put("/n_degrees/1").should route_to("n_degrees#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/n_degrees/1").should route_to("n_degrees#destroy", :id => "1")
    end

  end
end
