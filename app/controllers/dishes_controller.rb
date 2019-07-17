class DishesController < ApplicationController
    def index
        @dishes = current_user.dishes
    end

    def new
        @dish = Dish.new
    end

    def create
        dish = current_user.dishes.create(dish_params)
        redirect_to dish_path(dish)
    end

    def show
        @dish = Dish.find_by_id(params[:id])
    end

    def edit
        @dish = Dish.find_by_id(params[:id])
    end

    def update
        dish = Dish.find_by_id(params[:id])
        dish.update(dish_params)
        redirect_to dish_path(dish)
    end

    def delete
    end

    private

        def dish_params
            params.require(:dish).permit(:name, :description, :price, :taste, :overall_value, :dining_experience, :restaurant_id)
        end
end
