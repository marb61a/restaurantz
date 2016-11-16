class RestaurantsController < ApplicationController
  before_action :set_user, only: [:index, :create, :update, :destroy]
  
  def index
  end
  
  def new
    @restaurant = Restaurant.new
  end
  
  def create
  end
  
  def show
  end
  
  def update
  end
  
  def destroy
  end
  
  private
    def restaurant_params
    end
end
