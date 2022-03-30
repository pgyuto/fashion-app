class MoneysController < ApplicationController
  def index
  end

  def new
    @money = Money.new
  end

  def create
    @money = Money.new(item_params)
    if @money.save
      redirect_to action: :index
    else
      render :new
    end
  end

  private

  def item_params
    params.require(:money).permit(
      :balance
    ).merge(user_id: current_user.id)
  end
end
