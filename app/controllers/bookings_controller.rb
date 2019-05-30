class BookingsController < ApplicationController
  def new
  end

  def create
    @article = Article.find(params[:article_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.article = @article
    if @booking.save
      redirect_to article_path(@article)
    else
      render :new
    end
  end
  private

  def booking_params
    params.require(:booking).permit(:starting_date, :ending_date)
  end

end
