class MovieSetsController < ApplicationController
  def index
    @movie_sets = MovieSet.all
  end

  def show
    @movie_set = MovieSet.find(params[:id])
  end
end
