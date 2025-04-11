class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @review.save
    redirect_to reviews_path(@review)
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
