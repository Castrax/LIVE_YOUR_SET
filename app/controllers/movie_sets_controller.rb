class MovieSetsController < ApplicationController
  def index
    @movie_sets = MovieSet.all
  end
end
