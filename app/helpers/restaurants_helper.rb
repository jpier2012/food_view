module RestaurantsHelper
    def set_restaurant
        @restaurant ||= Restaurant.find_by_id(params[:id])
    end
end
