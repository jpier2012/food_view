module RestaurantsHelper
    def set_restaurant
        @restaurant ||= Restaurant.find_by_id(params[:id])
    end

    def restaurant_access_redirect
        if @restaurant.created_by != current_user.id
            current_user.errors[:error] << ": You cannot edit a restaurant you did not create"
            render :show
        end
    end
end
