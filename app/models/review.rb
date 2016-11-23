class Review < ApplicationRecord
    belongs_to :restaurant
    belongs_to :user
    validates_presence_of :comment
end
