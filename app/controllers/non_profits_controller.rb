class NonProfitsController < ApplicationController

  def index
  end

  def show
    @non_profit = NonProfit.find_by(name: params[:name])
  end
end
