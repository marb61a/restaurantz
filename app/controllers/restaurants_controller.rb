class RestaurantsController < ApplicationController
  before_action :admin?, only: [:edit, :update, :destroy,]
  before_action :set_user, only: [:index, :create, :update, :destroy]
  before_action :set_the_id, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create] 
  
  def index
    if current_user
      @vlat = @user.latitude
      @vlon = @user.longitude
        
      visitor_latitude = @user.latitude
      visitor_longitude = @user.longitude  
      
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
      flash[:success] = "Great News! #{@user.username} your review has been saved."
    else
      flash[:error] = "Sorry #{@user.username}, see the errors below and re submit" 
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
      flash[:success] = "Great News! #{@user.username} The Restaurant has been updated."
      redirect_to @restaurant
    else
      flash[:danger] = "Sorry #{@user.username} The Restaurant Edit has some issues."
      render :edit
    end
  end
  
  def destroy
    if @restaurant.destroy
      flash[:success] = "Okay Then #{@user.username} You have deleted the Restaurant."
      redirect_to root_path
    else
      flash[:danger] = "Sorry #{@user.username} There seems to be a problem with your delete request."
      render @restaurant
    end
  end
  
  private
  
    def admin?
      if !current_user.try(:admin?)
        flash[:danger] = "You are not authorised to access this location."
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
