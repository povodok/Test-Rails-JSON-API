require 'rails_helper'

RSpec.describe ItemsController, type: :controller do

  let(:valid_attributes) {
    { name: "Example Item", price: 99.99, description: "Example description", item_slug: 'example-item', category_id: category.id }
  }

  let!(:category) { create(:category) }

  describe "GET #index" do
    it "returns a success response" do
      get :index, params: {}
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      item = Item.create! valid_attributes
      get :show, params: { item_slug: item.to_param }
      expect(response).to be_success
    end
  end
end
