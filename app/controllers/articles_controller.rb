class ArticlesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :set_article, only: [:show, :edit, :update, :destroy]


  def index
    if params[:sport].nil?
      @filtered = false
      @articles = Article.all
    else
      @filtered = true
      @articles = Article.where(sport: params[:sport])
    end
  end

  def new
    @article = Article.new
  end

  def show
    @article = Article.find(params[:id])
    @booking = Booking.new
  end

  def create
    @article = Article.new(article_params)
    @article.user = current_user
    if @article.save
      redirect_to article_path(@article)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @article.update(article_params)
      redirect_to article_path(@article)
    else
      render :edit
    end
    # Will raise ActiveModel::ForbiddenAttributesError
  end

  def destroy
    @article.destroy
  end
  
  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:name, :photo, :price, :description, :sport)
  end
end
