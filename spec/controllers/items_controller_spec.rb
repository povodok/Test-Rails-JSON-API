require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
  let!(:item) { create(:item) }
  let!(:category_2) { create(:category, slug: '2') }
  let!(:item_2) { create(:item,  slug: '2', category_id: category_2.id) }

  describe "GET #index" do
    it "returns a success response" do
      get :index, params: {}
      expect(response).to be_success
    end

    it "returns all items" do
      get :index, params: {}
      expect(response.body).to include_json([
        { category_id: item.category_id },
        { category_id: item_2.category_id }
      ])
    end

    it "returns items by category_id" do
      get :index, params: { category_id: item.category_id }
      expect(response.body).to include_json([{
        category_id: item.category_id
      }])
    end

    it "returns items by category_id" do
      get :index, params: { category_id: item.category_id }
      expect(response.body).not_to include_json([{
        category_id: item_2.category_id
      }])
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      get :show, params: { slug: item.to_param }
      expect(response).to be_success
    end
  end
end
