class PagesController < ApplicationController
  before_action :move_to_item, only: :index
  def index
  end

  private

  def move_to_item
    redirect_to items_path if user_signed_in?
  end
end
