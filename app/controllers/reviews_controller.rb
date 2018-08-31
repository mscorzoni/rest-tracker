class ReviewsController < ApplicationController
  before_action :set_restaurant

  def new
  end

  def create
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
