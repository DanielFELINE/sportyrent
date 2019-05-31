class ReviewsController < ApplicationController

  def create
    @article = Article.find(params[:article_id])
    @review = Review.new(review_params)
    @review.article_id = @article.id

    if @review.save
      redirect_to article_path(@article)
    else
      redirect_to articles_path
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :note)
  end
end
