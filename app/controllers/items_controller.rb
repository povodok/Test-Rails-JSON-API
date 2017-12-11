class ItemsController < ApplicationController
  before_action :set_item, only: :show

def index
  if params[:category_id]
    @items = Item.where(category_id: params[:category_id]).paginate(page: params[:page], per_page: 10)
  else
    @items = Item.paginate(page: params[:page], per_page: 10)
  end

  render json: @items
end

  def show
    render json: @item
  end

  private

    def set_item
      @item = Item.find_by!(slug: params[:slug])
    end
end
