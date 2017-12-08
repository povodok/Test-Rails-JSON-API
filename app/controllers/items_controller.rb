class ItemsController < ApplicationController
  before_action :set_item, only: :show

  def index
    @items = Item.paginate(page: params[:page], per_page: 10)
    render json: @items
  end

  def show
    render json: @item
  end

  private

    def set_item
      @item = Item.find_by!(item_slug: params[:item_slug])
    end

    def item_params
      params.require(:item).permit(:category_id, :name, :price, :description, :item_slug)
    end
end
