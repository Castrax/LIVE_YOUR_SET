class MovieSetsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @movie_sets = MovieSet.all
  end

  def show
    @movie_set = MovieSet.find(params[:id])
    @booking = Booking.new
  end
end
