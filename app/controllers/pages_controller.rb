class PagesController < ApplicationController
  before_action :set_page, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:edit, :update]
  
  # GET /pages
  # GET /pages.json
  def index
    @page = Page.find(1)
  end
  
  def about
    
  end
  
  def contact
    
  end
end
