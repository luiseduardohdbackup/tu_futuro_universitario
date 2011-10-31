require "spec_helper"

describe ScholarshipsController do
  describe "routing" do

    it "routes to #index" do
      get("/scholarships").should route_to("scholarships#index")
    end

    it "routes to #new" do
      get("/scholarships/new").should route_to("scholarships#new")
    end

    it "routes to #show" do
      get("/scholarships/1").should route_to("scholarships#show", :id => "1")
    end

    it "routes to #edit" do
      get("/scholarships/1/edit").should route_to("scholarships#edit", :id => "1")
    end

    it "routes to #create" do
      post("/scholarships").should route_to("scholarships#create")
    end

    it "routes to #update" do
      put("/scholarships/1").should route_to("scholarships#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/scholarships/1").should route_to("scholarships#destroy", :id => "1")
    end

  end
end
