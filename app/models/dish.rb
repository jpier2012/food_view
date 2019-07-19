class Dish < ApplicationRecord
    belongs_to :user
    belongs_to :restaurant
    accepts_nested_attributes_for :restaurant
    validates :name, presence: true
    validates :price, presence: true
    validates :taste, presence: true
    validates :overall_value, presence: true
    validates :dining_experience, presence: true

    def restaurant_name
        self.restaurant.name
    end

    def restaurant_attributes=(attributes)
        restaurant = Restaurant.find_or_create_by(name: attributes[:name])
        self.restaurant = restaurant
    end
end
