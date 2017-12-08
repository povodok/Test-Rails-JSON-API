class CategoriesController < ApplicationController
  before_action :set_category, only: :show

  def index
    @categories = Category.all
    render json: @categories
  end

  def show
    render json: @category
  end

  private

    def set_category
      @category = Category.find_by!(category_slug: params[:category_slug])
    end

    def category_params
      params.require(:category).permit(:name, :category_slug)
    end
end
