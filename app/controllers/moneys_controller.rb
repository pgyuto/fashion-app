class MoneysController < ApplicationController
  def index
    @money = current_user.money
  end

  def new
    @money = Money.new
  end

  def create
    @money = Money.new(money_params)
    if @money.save
      redirect_to action: :index
    else
      render :new
    end
  end

  def edit
    @money = current_user.money
  end

  def update
    @money = current_user.money
    if @money.update(money_params)
      redirect_to action: :index
    else
      render :edit
    end
  end

  private

  def money_params
    params.require(:money).permit(
      :balance
    ).merge(user_id: current_user.id)
  end

end
