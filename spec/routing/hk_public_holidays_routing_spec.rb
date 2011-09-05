require "spec_helper"

describe HkPublicHolidaysController do
  describe "routing" do

    it "routes to #index" do
      get("/hk_public_holidays").should route_to("hk_public_holidays#index")
    end

    it "routes to #new" do
      get("/hk_public_holidays/new").should route_to("hk_public_holidays#new")
    end

    it "routes to #show" do
      get("/hk_public_holidays/1").should route_to("hk_public_holidays#show", :id => "1")
    end

    it "routes to #edit" do
      get("/hk_public_holidays/1/edit").should route_to("hk_public_holidays#edit", :id => "1")
    end

    it "routes to #create" do
      post("/hk_public_holidays").should route_to("hk_public_holidays#create")
    end

    it "routes to #update" do
      put("/hk_public_holidays/1").should route_to("hk_public_holidays#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/hk_public_holidays/1").should route_to("hk_public_holidays#destroy", :id => "1")
    end

  end
end
