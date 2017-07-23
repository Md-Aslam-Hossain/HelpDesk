require "rails_helper"

RSpec.describe HelpdesksController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/helpdesks").to route_to("helpdesks#index")
    end


    it "routes to #show" do
      expect(:get => "/helpdesks/1").to route_to("helpdesks#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/helpdesks").to route_to("helpdesks#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/helpdesks/1").to route_to("helpdesks#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/helpdesks/1").to route_to("helpdesks#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/helpdesks/1").to route_to("helpdesks#destroy", :id => "1")
    end

  end
end
