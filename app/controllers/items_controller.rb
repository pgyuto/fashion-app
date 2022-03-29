class ItemsController < ApplicationController
  def index
    @items = current_user.items.order('created_at DESC')
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @item = current_user.items.find(params[:id])
  end

  private

  def item_params
    params.require(:item).permit(
      :text, :category_id, :color_id, :maker, :image
    ).merge(user_id: current_user.id)
  end
end
