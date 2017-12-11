require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
  let!(:item) { create(:item) }
  let!(:item_2) { create(:item) }
  let!(:items_list) { create_list(:item, 15) }

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
      items = parsed_response
      expect(items.size).to eq(1)
    end

    it 'returns items by page' do
      get :index, params: { page: 1 }
      items = parsed_response
      expect(items.size).to eq(10)
      get :index, params: { page: 2 }
      items = parsed_response
      expect(items.size).to eq(7)
    end
  end


  describe "GET #show" do
    it "returns a success response" do
      get :show, params: { slug: item.to_param }
      expect(response).to be_success
    end
  end
end
