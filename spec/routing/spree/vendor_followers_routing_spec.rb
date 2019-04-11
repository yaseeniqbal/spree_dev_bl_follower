require "rails_helper"

RSpec.describe Spree::VendorFollowersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/spree/vendor_followers").to route_to("spree/vendor_followers#index")
    end

    it "routes to #new" do
      expect(:get => "/spree/vendor_followers/new").to route_to("spree/vendor_followers#new")
    end

    it "routes to #show" do
      expect(:get => "/spree/vendor_followers/1").to route_to("spree/vendor_followers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/spree/vendor_followers/1/edit").to route_to("spree/vendor_followers#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/spree/vendor_followers").to route_to("spree/vendor_followers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/spree/vendor_followers/1").to route_to("spree/vendor_followers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/spree/vendor_followers/1").to route_to("spree/vendor_followers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/spree/vendor_followers/1").to route_to("spree/vendor_followers#destroy", :id => "1")
    end
  end
end
