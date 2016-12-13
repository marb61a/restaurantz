class Restaurant < ApplicationRecord
    has_many :reviews
    belongs_to :category
    validates_presence_of :name, :description, :city, :state_provence
    
    geocoded_by :full_address
    after_validation :geocode
    mount_uploader :image, ImageUploader 
    
    def full_address
        [city, state_provence].join(', ')
    end
    
    def self.search(params)
        restaurants = Restaurant.where(category_id: params[:category].to_i)
        
        
    end
    
end
