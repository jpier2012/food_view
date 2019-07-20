class DishesController < ApplicationController
    include DishesHelper
    before_action :set_dish, only: [:show, :edit, :update, :destroy]

    def index
        if params[:restaurant_id]
            @dishes = Restaurant.find_by_id(params[:restaurant_id]).dishes
        else
            @dishes = Dish.order_by_restaurant
        end
    end

    def new
        if params[:restaurant_id]
            @restaurant = Restaurant.find_by_id(params[:restaurant_id])
            @dish = @restaurant.dishes.build
        else
            @dish = Dish.new
            @restaurant = @dish.build_restaurant
        end
    end

    def create
        if !params[:dish][:restaurant_id].blank?
            @restaurant = Restaurant.find_by_id(params[:dish][:restaurant_id])
            @dish = @restaurant.dishes.build(dish_params)
            @dish.user = current_user
        else
            @dish = current_user.dishes.build(dish_params)
        end

        if @dish.valid?
            @dish.save
            redirect_to restaurant_dishes_path(@dish.restaurant)
        else
            render :new
        end
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
            params.require(:dish).permit(
                :name, 
                :description, 
                :price, 
                :taste, 
                :overall_value, 
                :dining_experience, 
                :restaurant_id, 
                restaurant_attributes: [
                    :name,
                    :description,
                    :cuisine,
                    :dress_code,
                    :outdoor_seating,
                    :child_friendly,
                    :open_bar,
                    :byob
                ]
            )
        end
end
