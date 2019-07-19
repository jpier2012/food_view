class Dish < ApplicationRecord
    belongs_to :user
    belongs_to :restaurant
    accepts_nested_attributes_for :restaurant, reject_if: :all_blank

    def restaurant_name
        self.restaurant.name
    end

end
