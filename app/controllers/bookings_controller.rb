require 'date'

class BookingsController < ApplicationController

  def new
    @booking = Booking.new
  end

  def create
    @article = Article.find(params[:article_id])
    year_1 = params["booking"]["starting_date(1i)"]
    month_1 = params["booking"]["starting_date(2i)"]
    day_1 = params["booking"]["starting_date(3i)"]
    year_2 = params["booking"]["ending_date(1i)"]
    month_2 = params["booking"]["ending_date(2i)"]
    day_2 = params["booking"]["ending_date(3i)"]
    starting_date = Date.parse("#{year_1}-#{month_1}-#{day_1}")
    ending_date = Date.parse("#{year_2}-#{month_2}-#{day_2}")
    date = { starting_date: starting_date, ending_date: ending_date }
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.status = true
    @booking.article = @article
    if @booking.save
      redirect_to article_path(@article)
    else
      render :new
    end
  end

   def destroy
    @booking.destroy
    redirect_to users_dashboard_path
  end
  private

  def booking_params
    params.require(:booking).permit(:starting_date, :ending_date)
  end

end
