class MovieShopsController < ApplicationController
before_action :authenticate_user!, only: [:show]

  def index
    @movie_shops = MovieShop.all
  end

  def show
    @movie_shop = MovieShop.find(params[:id])
    @review = Review.new
  end
end
