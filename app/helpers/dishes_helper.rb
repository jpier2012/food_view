module DishesHelper
    def set_dish
        @dish ||= current_user.dishes.find_by_id(params[:id])
    end
end
