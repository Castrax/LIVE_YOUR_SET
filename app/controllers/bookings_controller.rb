class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @user = User.find(params[:user_id])
    @booking.user = @user
    if @booking.save
      redirect_to dashboard_path(@user)
    else
      render 'new'
  end
end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_price, :user_id, :movie_set_id)
  end
end
