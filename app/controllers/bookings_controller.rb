class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    # @user = current_user
    # @booking.user = @user
    #     const end_date = new Date(string_end_date.value);
    # const start_milliseconds = start_date.getTime();
    # const end_milliseconds = end_date.getTime();
    # const milliseconds = end_milliseconds - start_milliseconds;
    # const period = milliseconds/86400000;
    # const totalcalculation = period * price_per_day.innerText
    @booking.movie_set = MovieSet.find(params[:movie_set_id].to_i)
    @price_per_day = @booking.movie_set.price_per_day
    @end_date = params[:booking][:end_date].to_date
    @start_date = params[:booking][:start_date].to_date
    @total_price = ((@end_date - @start_date) * @price_per_day).to_i
    @booking.total_price = @total_price
    if @booking.save!
      redirect_to dashboard_path
    else
      redirect_to movie_set_path(params[:movie_set_id].to_i)
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user_id, :status)
  end
end
