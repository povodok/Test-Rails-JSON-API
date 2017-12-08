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
        item_slug: item.item_slug}])
    end
  end

  describe "GET /item/:item_slug" do
    it "returns item" do
      get item_path(item)
      expect(response).to have_http_status(200)
      expect(response.body).to include_json({
        id: item.id,
        name: item.name,
        description: item.description,
        price: item.price.to_s,
        category_id: item.category_id,
        item_slug: item.item_slug
      })
     end
   end
end
