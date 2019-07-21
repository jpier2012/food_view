class UsersController < ApplicationController
    def show_filters
        @cuisines = Restaurant.cuisines
    end

    def edit_filters
        session[:filters] ||= {}
        session[:filters] = params[:filters].each do |attr, value|
            session[:filters][:"#{attr}"] = value unless value.nil?
        end
        redirect_to all_restaurants_path
    end

    def clear_filters
        session.delete(:filters)
        redirect_to all_restaurants_path
    end

end