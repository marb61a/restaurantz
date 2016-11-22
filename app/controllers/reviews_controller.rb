class ReviewsController < ApplicationController
  before_action :set_the_restaurant
  before_action :authenticate_user!

  def index
  end
  
  def new
    @review = Review.new(restaurant: @restaurant)
  end
  
  def create
    @user = current_user
    @review = current_user.reviews.build(review_params)
    @review.restaurant = @restaurant
    if @review.save
      flash[:success] = "Thanks #{@user.username}, Your review has been added"
      redirect_to @restaurant
    else
      flash[:error] = "Oops #{@user.username}, there seems to be a problem"
        render :new
    end
  end
  
  private
    def set_the_restaurant
      @restaurant = Restaurant.find(params[:restaurant_id])
    end
    
    def review_params
      params.require(:review).permit(:comment, :rating)
    end
end