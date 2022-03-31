class MoneysController < ApplicationController
  before_action :set_money, only: [:edit, :update, :destroy]
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
  end

  def update
    if @money.update(money_params)
      redirect_to action: :index
    else
      render :edit
    end
  end

  def destroy
    @money.destroy
    redirect_to action: :index
  end

  private

  def money_params
    params.require(:money).permit(
      :balance
    ).merge(user_id: current_user.id)
  end

  def set_money
    @money = current_user.money
  end
end
