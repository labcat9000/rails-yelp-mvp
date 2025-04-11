class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurants_path(@restaurant)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new(review_params)
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category)
  end

  def review_params
    raise
    params.require(:review).permit(:rating, :content)
  end
end
