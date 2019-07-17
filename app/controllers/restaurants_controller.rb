class RestaurantsController < ApplicationController
    def index
        @restaurants=Restaurant.all
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
    end

    def update
    end

    def delete
    end

    private

        def restaurant_params
            params.require(:restaurant).permit(:name, :address, :cuisine, :dress_code, :outdoor_seating?, :child_friendly?, :open_bar?, :byob?)
        end
end
