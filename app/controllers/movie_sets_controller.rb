class MovieSetsController < ApplicationController
  def index
  end

  def show
    @movie_set = MovieSet.find(params[:id])
  end
end
