class ArticlesController < ApplicationController
  before_action :move_to_index, except: :index
  before_action :authenticate_user!, only: :new
  before_action :set_article, only: [:edit, :show, :update, :destroy]

  def index
    @articles = Article.order(created_at: :desc).page(params[:page]).per(20).includes(:user)
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
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
    @html = markdown.render(@article.text)
    @stock = @article.stocks.find_by(user_id: current_user.id)
  end

  def edit
  end

  def update
    if @article.update(article_params)
      flash[:notice] = "編集が成功しました"
      redirect_to root_path
    else
      flash[:notice] = "入力内容が正しくありません"
      render :edit
    end
  end

  private
  def move_to_index
    redirect_to new_user_session_path unless user_signed_in?
  end

  def article_params
    params.require(:article).permit(:title, :text).merge(user_id: current_user.id)
  end

  def set_article
    @article = Article.find(params[:id])
  end

end
