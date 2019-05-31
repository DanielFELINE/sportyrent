class ArticlesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :set_article, only: [:show, :edit, :update, :destroy]


  def index
    if params[:query].nil?
      @articles = Article.order(:id).all
    else
      @articles = Article.global_search(params[:query])
    end
    @markers = @articles.where.not(latitude: nil, longitude: nil).map do |article|
      {
        lat: article.latitude,
        lng: article.longitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { article: article })
      }
    end
  end

  def new
    @article = Article.new
  end

  def show
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
    @article.user = current_user
    if @article.update(article_params)
      redirect_to article_path(@article)
    else
      render :edit
    end
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:name, :photo, :price, :description, :sport)
  end
end
