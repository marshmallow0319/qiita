class StocksController < ApplicationController

  def index
    @stocks = Stock.order(created_at: :desc)
  end

  def create
  end

  def destroy
  end

end
