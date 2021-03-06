class MovieSetsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:search]
      @search = params[:search][:query]
      @title = ""
      @movie_sets = MovieSet.where("title ILIKE ? OR media_name ILIKE ? OR address ILIKE ?", "%#{@search}%", "%#{@search}%", "%#{@search}%")
    else
      @movie_sets = MovieSet.geocoded
    end

    @markers = @movie_sets.map do |movie|
      {
        lat: movie.latitude,
        lng: movie.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { movie_set: movie })
      }
    end
  end

  def show
    @movie_set = MovieSet.find(params[:id])
    @booking = Booking.new
  end

  def new
    @movie_set = MovieSet.new(params[:movie_set])
  end

  def create
    @movie_set = MovieSet.new(movie_set_params)
    @movie_set.user_id = current_user.id
    @movie_set.save
    redirect_to movie_set_path(@movie_set), alert: "You added a new show!"
  end

  def edit
    @movie_set = MovieSet.find(params[:id])
  end

  def update
    @movie_set = MovieSet.find(params[:id])
    @movie_set.update(movie_set_params)
    redirect_to movie_set_path(@movie_set)
  end

  def destroy
    @movie_set = MovieSet.find(params[:id])
    @movie_set.destroy
    redirect_to dashboard_path
  end

  private

  def movie_set_params
    params.require(:movie_set).permit(:title, :address, :description, :media_name, :price_per_day, photos: [])
  end
end
