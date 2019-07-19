class RestaurantsController < ApplicationController


    # if there are attributes present in the restaurant_filters session hash, 
    # this method will call the equivalent scope methods on the Restaurant class to chain the query criteria
    def index
        @restaurants ||= Restaurant.all
        if session[:restaurant_filters]
            session[:restaurant_filters].each do |attr, value|
                value == "false" ? filter = "no_#{attr}" : filter = attr
                filter = "all" if value == "all"
                @restaurants = @restaurants.send(filter)
            end
        end
    end

    def new
        @restaurant = Restaurant.new
    end

    def create
        restaurant = Restaurant.create(restaurant_params)
        redirect_to restaurant_path(restaurant)
    end

    def show
        @restaurant = Restaurant.find_by_id(params[:id])
    end

    def edit
        @restaurant = Restaurant.find_by_id(params[:id])
    end

    def update
    end

    def delete
    end

    private

        def restaurant_params
            params.require(:restaurant).permit(:name, :address, :cuisine, :dress_code, :outdoor_seating, :child_friendly, :open_bar, :byob)
        end
end
