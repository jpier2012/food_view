module RestaurantsHelper
    def set_restaurant
        @restaurant ||= Restaurant.find_by_id(params[:id])
    end

    def edit_redirect
        current_user.errors[:error] << ": You cannot edit a Restaurant you did not create"
        render :show if @restaurant.created_by != current_user.id
    end
end
