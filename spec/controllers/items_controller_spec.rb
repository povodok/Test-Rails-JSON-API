require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
  let!(:item) { create(:item) }

  describe "GET #index" do
    it "returns a success response" do
      get :index, params: {}
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      get :show, params: { item_slug: item.to_param }
      expect(response).to be_success
    end
  end
end
