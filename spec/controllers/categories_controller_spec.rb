require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do
  let!(:category) { create(:category) }

  describe "GET #index" do
    it "returns a success response" do
      get :index, params: {}
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      get :show, params: { slug: category.to_param }
      expect(response).to be_success
    end
  end
end
