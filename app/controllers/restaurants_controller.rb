class RestaurantsController < ApplicationController
    include RestaurantsHelper
    before_action :set_restaurant, only: [:show, :edit, :update, :destroy]
    before_action :restaurant_access_redirect, only: [:edit, :update, :destroy]


    # if there are attributes present in the restaurant_filters session hash, 
    # this method will call the equivalent scope methods on the Restaurant class to chain the query criteria
    def index
        @restaurants = current_user.restaurants
        if session[:filters]
            session[:filters].each do |attr, value|
                value == "false" ? filter = "no_#{attr}" : filter = attr
                filter = value.downcase.strip if attr == "cuisine"
                @restaurants = @restaurants.send(filter)
            end
        end
    end
    
    def all
        @restaurants = Restaurant.all
    end

    def new
        @restaurant = Restaurant.new
    end

    def create
        @restaurant = Restaurant.new(restaurant_params)
        @restaurant.created_by = current_user.id

        if @restaurant.valid?
            @restaurant.save
            redirect_to restaurant_path(@restaurant)
        else
            render :new
        end
    end

    def show
    end

    def edit
    end

    def update
        @restaurant.update(restaurant_params)
        redirect_to restaurant_path(@restaurant)
    end

    def destroy
        @restaurant.destroy
        redirect_to restaurants_path
    end

    private

        def restaurant_params
            params.require(:restaurant).permit(:name, :address, :cuisine, :dress_code, :outdoor_seating, :child_friendly, :open_bar, :byob)
        end
end
