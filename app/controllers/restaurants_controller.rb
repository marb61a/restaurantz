class RestaurantsController < ApplicationController
  before_action :set_user, only: [:index, :create, :update, :destroy]
  
  def index
  end
  
  def new
    @restaurant = Restaurant.new
  end
  
  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to @restaurant
      flash[:success] = ""
    else
      flash[:error] = ""
      render :new
    end
  end
  
  def show
    @user = current_user
  end
  
  def search
    @restaurants = Restaurant.search(params)
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
  end
  
  private
    def set_user
      @user = current_user
    end
    
    def restaurant_params
      params.require(:restaurant).permit(:name, :description, :address1, :address2,
      :city, :state_provence, :postalcode, :phone, :email, :category_id, :image)
    end
end
