require "spec_helper"

describe Spree::InvoicesController do
  describe "routing" do

    it "routes to #index" do
      get("/spree_invoices").should route_to("spree_invoices#index")
    end

    it "routes to #new" do
      get("/spree_invoices/new").should route_to("spree_invoices#new")
    end

    it "routes to #show" do
      get("/spree_invoices/1").should route_to("spree_invoices#show", :id => "1")
    end

    it "routes to #edit" do
      get("/spree_invoices/1/edit").should route_to("spree_invoices#edit", :id => "1")
    end

    it "routes to #create" do
      post("/spree_invoices").should route_to("spree_invoices#create")
    end

    it "routes to #update" do
      put("/spree_invoices/1").should route_to("spree_invoices#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/spree_invoices/1").should route_to("spree_invoices#destroy", :id => "1")
    end

  end
end
