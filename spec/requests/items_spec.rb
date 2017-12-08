require 'rails_helper'

RSpec.describe "Items", type: :request do
  let!(:category) { create(:category) }
  let(:valid_attributes) {
    { name: "Example Item", price: 99.99, description: "Example description", item_slug: 'example-item', category_id: category.id }
  }

  describe "GET /items" do
    it "returns list of items" do
      item = Item.create! valid_attributes
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
      item = Item.create! valid_attributes
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
