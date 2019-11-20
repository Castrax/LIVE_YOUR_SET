class MovieSetsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:search]
      @search = params[:search][:query]
      @title = ""
      @movie_sets = MovieSet.geocoded.where("title ILIKE ? OR media_name ILIKE ? OR address ILIKE ?", "%#{@search}%", "%#{@search}%", "%#{@search}%")
    else
      @movie_sets = MovieSet.geocoded
    end

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

  def movie_set_params
    params.require(:movie_set).permit(:title, :address)
  end
end
