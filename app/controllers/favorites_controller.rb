class FavoritesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_item

  def create
    @favorite = Favorite.create(user_id: current_user.id, item_id: @item.id)
    redirect_to root_path
  end

  def destroy
    @favorite = Favorite.find_by(user_id: current_user.id, item_id: @item.id)
    @favorite.destroy
    redirect_to root_path
  end

  private
  def set_item
    @item = Item.find(params[:item_id])
  end
  
end
