class PagesController < ApplicationController
  before_action :move_to_item, only: :index
  def index
  end


  private
  def move_to_item
    if user_signed_in?
      redirect_to items_path
    end
  end
end
