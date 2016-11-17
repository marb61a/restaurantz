class Restaurant < ApplicationRecord
    has_many :reviews
    belongs_to :category
    validates_presence_of :name, :description, :city, :state_provence
    
    def full_address
    end
    
    def self.search(params)
    end
    
end
