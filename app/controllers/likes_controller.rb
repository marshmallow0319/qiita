class LikesController < ApplicationController
  def index
    @likes = Likes.where(user_id: current_user.id).order("created_at DESC").page(params[:page]).per(10)
  end

  def create
    @like = Like.create(user_id: current_user.id, article_id: params[:article_id])
    @likes = Like.where(article_id: params[:article_id])
    @article = Article.find(params[:article_id])
  end

  def destroy
    like = Like.find_by(user_id: current_user.id, article_id: params[:article_id])
    like.destroy
    @likes = Like.where(article_id: params[:article_id])
    @article = Article.find(params[:article_id])
  end
end
