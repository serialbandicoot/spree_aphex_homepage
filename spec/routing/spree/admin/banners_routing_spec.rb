require "spec_helper"

describe Spree::Admin::BannersController do
  describe "routing" do

    it "routes to #index" do
      get("/spree_admin_banners").should route_to("spree_admin_banners#index")
    end

    it "routes to #new" do
      get("/spree_admin_banners/new").should route_to("spree_admin_banners#new")
    end

    it "routes to #show" do
      get("/spree_admin_banners/1").should route_to("spree_admin_banners#show", :id => "1")
    end

    it "routes to #edit" do
      get("/spree_admin_banners/1/edit").should route_to("spree_admin_banners#edit", :id => "1")
    end

    it "routes to #create" do
      post("/spree_admin_banners").should route_to("spree_admin_banners#create")
    end

    it "routes to #update" do
      put("/spree_admin_banners/1").should route_to("spree_admin_banners#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/spree_admin_banners/1").should route_to("spree_admin_banners#destroy", :id => "1")
    end

  end
end
