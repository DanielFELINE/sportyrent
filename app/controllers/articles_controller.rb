class ArticlesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @articles = Article.all
  end
  
  def new
    @article = Article.new
  end

  def show
    @article = Article.find(params[:id])
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end
    
end