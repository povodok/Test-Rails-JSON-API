require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do

  let(:valid_attributes) {
    { name: "Example Category", category_slug: "example-category" }
  }

  describe "GET #index" do
    it "returns a success response" do
      get :index, params: {}
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      category = Category.create! valid_attributes
      get :show, params: { category_slug: category.to_param }
      expect(response).to be_success
    end
  end
end
