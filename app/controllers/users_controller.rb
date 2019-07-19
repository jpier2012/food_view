class UsersController < ApplicationController
    def show_filters
    end

    def edit_filters
        
    end

    def restaurant_filter_params
        params.require(:restaurant).permit(:cuisine, :byob)
    end

end