require "rails_helper"

RSpec.describe ItemsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(get: "/items").to route_to("items#index")
    end

    it "routes to #show" do
      expect(get: "/items/apple-macbook-pro").to route_to("items#show", slug: "apple-macbook-pro")
    end
  end
end
