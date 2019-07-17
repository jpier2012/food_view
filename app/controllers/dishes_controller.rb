class DishesController < ApplicationController
    include DishesHelper
    before_action :set_dish, only: [:show, :edit, :update, :destroy]

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
    end

    def edit
    end

    def update
        @dish.update(dish_params)
        redirect_to dish_path(@dish)
    end

    def destroy
        @dish.destroy
        redirect_to dishes_path
    end

    private

        def dish_params
            params.require(:dish).permit(:name, :description, :price, :taste, :overall_value, :dining_experience, :restaurant_id)
        end
end
