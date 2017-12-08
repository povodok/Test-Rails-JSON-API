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
        category_slug: category.category_slug}])
    end
  end

  describe "GET /category/:category_slug" do
    it "returns category" do
      get category_path(category)
      expect(response).to have_http_status(200)
      expect(response.body).to include_json({
        id: category.id,
        name: category.name,
        category_slug: category.category_slug
      })
    end
  end
end
