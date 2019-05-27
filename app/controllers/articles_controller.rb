class ArticlesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @articles = Article.all
  end
  
  def new
    @article = Article.new
  end
end