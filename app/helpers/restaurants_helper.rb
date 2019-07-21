module RestaurantsHelper
    def set_restaurant
        @restaurant ||= Restaurant.find_by_id(params[:id])
    end

    def edit_redirect
        redirect_to restaurants_path if @restaurant.created_by != current_user.id
    end
end
