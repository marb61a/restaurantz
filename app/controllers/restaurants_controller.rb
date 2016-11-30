class RestaurantsController < ApplicationController
  before_action :admin?, only: [:edit, :update, :destroy,]
  before_action :set_user, only: [:index, :create, :update, :destroy]
  before_action :set_the_id, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create] 
  
  def index
    if current_user
      
    else
      
    end
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
    @restaurant = Restaurant.find(params[:id])
    @reviews = Review.where(restaurant_id: @restaurant) 
    if @reviews.blank?
      @average_rating = 0
    else
      @average_rating = @reviews.average(:rating).round(2)
    end
  end
  
  def search
    @restaurants = Restaurant.search(params)
  end
  
  def edit
  end
  
  def update
    if @restaurant.update
      flash[:success] = ""
      redirect_to @restaurant
    else
      flash[:danger] = ""
      render :edit
    end
  end
  
  def destroy
    if @restaurant.destroy
      flash[:success] = ""
      redirect_to root_path
    else
      flash[:danger] = ""
      render @restaurant
    end
  end
  
  private
  
    def admin?
      if !current_user.try(:admin?)
        flash[:danger] = "You are not authourized to access this resource."
        redirect_to root_path
      end
    end 
    
    def set_user
      @user = current_user
    end
    
    def set_the_id
      @restaurant = Restaurant.find(params[:id])
    end
    
    def restaurant_params
      params.require(:restaurant).permit(:name, :description, :address1, :address2,
      :city, :state_provence, :postalcode, :phone, :email, :category_id, :image)
    end
end
