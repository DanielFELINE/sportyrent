class ArticlesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :set_article, only: [:show, :edit, :update, :destroy]


  def index
    p params
    if params[:query].nil?
      @articles = Article.all
    else
      @articles = Article.global_search(params[:query])
      @filtered = true
      @articles = Article.where(sport: params[:sport])
      @articles = Article.where.not(latitude: nil, longitude: nil)
  
      @markers = @articles.map do |article|
        {
          lat: article.latitude,
          lng: article.longitude,
          infoWindow: render_to_string(partial: "infowindow", locals: { article: article })
        }
      end
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
    set_article
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
