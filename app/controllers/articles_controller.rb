class ArticlesController < ApplicationController
  before_action :move_to_index, except: :index
  before_action :authenticate_user!, only: :new
  before_action :set_article, only: :show

  def index
    @articles = Article.order(created_at: :desc)
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to root_path, notice: '保存しました'
    else
      render :new
    end
  end

  def destroy
    @article.destroy
    redirect_to root_path
  end

  def show
  end

  private
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

  def article_params
    params.require(:article).permit(:title, :text).merge(user_id: current_user.id)
  end

  def set_article
    @article = Article.find(params[:id])
  end

end
