require 'rails_helper'

RSpec.describe "Categories", type: :request do
  let!(:category) { create(:category) }

  describe "GET /categories" do
    it "returns list of categories" do
      get categories_path
      expect(response).to have_http_status(200)
      expect(response.body).to include_json([{
        id: category.id,
        name: category.name,
        slug: category.slug
      }])
    end
  end

  describe "GET /category/:slug" do
    it "returns category" do
      get category_path(category)
      expect(response).to have_http_status(200)
      expect(response.body).to include_json({
        id: category.id,
        name: category.name,
        slug: category.slug
      })
    end
  end
end
