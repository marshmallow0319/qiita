class StocksController < ApplicationController

  def index
    @stocks = Stock.where(user_id: current_user.id).order("created_at DESC").page(params[:page]).per(10)
  end

  def create
    @stock = Stock.create(user_id: current_user.id, article_id: params[:article_id])
    @stocks = Stock.where(article_id: params[:article_id])
    @article = Article.find(params[:article_id])
  end

  def destroy
    stock = Stock.find_by(user_id: current_user.id, article_id: params[:article_id])
    stock.destroy
    @stocks = Stock.where(article_id: params[:article_id])
    @article = Article.find(params[:article_id])
  end

end
