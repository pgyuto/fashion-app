class ItemsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  before_action :set_q, only: [:index, :search]
  def index
    @items = current_user.items.with_attached_image.order('created_at DESC')
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
  end

  def edit
  end
  
  def update
    if @item.update(item_params)
      redirect_to action: :show
    else
      render :edit
    end
  end

  def destroy
    @item.destroy
    redirect_to action: :index
  end

  def search
    @results = @q.result.with_attached_image.order('created_at DESC')
  end

  private

  def set_q
    @q = Item.ransack(params[:q])
  end

  def item_params
    params.require(:item).permit(
      :text, :category_id, :color_id, :maker, :image
    ).merge(user_id: current_user.id)
  end

  def set_item
    @item = current_user.items.find(params[:id])
  end
end
