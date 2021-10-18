class ReviewsController < ApplicationController
  def index
  end

  def create
    @review = Review.new(review_params)
    @review.user_id =current_user.id
    if @review.save
      redirect_to movie_shop_reviews_path(@review.movie_shop)
    else
      @movie_shop = MovieShop.find(params[:id])
      render "movie_shops/show"
    end
  end

  private
  def review_params
    params.require(:review).permit(:movie_shop_id, :score, :content)
  end
end
