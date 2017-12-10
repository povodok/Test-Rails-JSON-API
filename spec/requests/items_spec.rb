require 'rails_helper'

RSpec.describe "Items", type: :request do
  let!(:item) { create(:item) }

  describe "GET /items" do
    it "returns list of items" do
      get items_path
      expect(response).to have_http_status(200)
      expect(response.body).to include_json([{
        id: item.id,
        name: item.name,
        description: item.description,
        price: item.price.to_s,
        category_id: item.category_id,
        slug: item.slug
      }])
    end
  end

  describe "GET /item/:slug" do
    it "returns item" do
      get item_path(item)
      expect(response).to have_http_status(200)
      expect(response.body).to include_json({
        id: item.id,
        name: item.name,
        description: item.description,
        price: item.price.to_s,
        category_id: item.category_id,
        slug: item.slug
      })
     end
   end
end
