class PagesController < ApplicationController
  before_action :set_page, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:edit, :update]
  before_action :admin?, only: [:edit, :update]
  
  # GET /pages
  # GET /pages.json
  def index
    @page = Page.find(1)
  end
  
  def about
    @restaurant_1 = Restaurant.find(1)
    @restaurant_2 = Restaurant.find(2)
    @restaurant_3 = Restaurant.find(3)
    @page = Page.find(2)
  end
  
  def contact
    @page = Page.find(2)  
  end
  
  def show
    @restaurant_1 = Restaurant.find(1)
    @restaurant_2 = Restaurant.find(2)
    @restaurant_3 = Restaurant.find(3)  
  end
  
  def new
    redirect_to root_path
    flash[:danger] = "You are unable to access this area"
  end
  
  def edit
  end
  
  def update
    
  end
  
  private
  
    def admin?
      if !current_user.try(:admin?)
        flash[:danger] = "You are not authorised to access this section"
        redirect_to root_path
      end
    end
    
    def set_page
      @page = Page.find(params[:id])
    end
    
    def page_params
      params.require(:page).permit(:string_1, :string_2, :string_3, :string_4, :string_5, :string_6, :string_7, :string_8, :string_9, :string_10, :string_11, :string_12, :string_13, :string_14, :string_15, :string_16, :text_1, :text_2, :text_3, :text_4, :text_5, :text_6, :text_7, :text_8, :text_9, :text_10, :page_name, :integer_1, :integer_2, :integer_3, :integer_4, :image_1, :image_2, :image_3, :image_4)
    end
end
