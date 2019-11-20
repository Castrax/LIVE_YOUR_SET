class MovieSetsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @movie_sets = MovieSet.geocoded

    @markers = @movie_sets.map do |movie|
      {
        lat: movie.latitude,
        lng: movie.longitude
      }
    end
  end

  def show
    @movie_set = MovieSet.find(params[:id])
    @booking = Booking.new
  end
end
