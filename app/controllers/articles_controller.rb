class ArticlesController < ApplicationController
  before_action :move_to_index, except: :index
  before_action :authenticate_user!, only: :new

  def index
  end

  private
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end
