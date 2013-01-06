require "spec_helper"

describe TalesController do
  describe "routing" do

    it "routes to #index" do
      get("/tales").should route_to("tales#index")
    end

    it "routes to #new" do
      get("/tales/new").should route_to("tales#new")
    end

    it "routes to #show" do
      get("/tales/1").should route_to("tales#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tales/1/edit").should route_to("tales#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tales").should route_to("tales#create")
    end

    it "routes to #update" do
      put("/tales/1").should route_to("tales#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tales/1").should route_to("tales#destroy", :id => "1")
    end

  end
end
