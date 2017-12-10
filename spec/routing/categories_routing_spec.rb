require "rails_helper"

RSpec.describe CategoriesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(get: "/categories").to route_to("categories#index")
    end

    it "routes to #show" do
      expect(get: "/categories/notebook").to route_to("categories#show", slug: "notebook")
    end
  end
end
