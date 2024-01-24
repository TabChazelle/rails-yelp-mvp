class RestaurantsController < ApplicationController

def index
  @restaurant = Restaurant.new
  @restaurants = Restaurant.all


end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reviews = @restaurant.reviews
  end
  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category)
  end
end
