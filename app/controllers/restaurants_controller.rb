class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @review = Review.new
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.create(set_parameters)
    redirect_to restaurant_path(@restaurant)
  end

  private

  def set_parameters
    params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end
end
