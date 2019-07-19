class UsersController < ApplicationController
    def show_filters
    end

    def edit_filters
        binding.pry
        session[:filters] ||= {}
        params[:user].each do |attr, value|
            session[:filters][:"#{attr}"] = value unless value.nil?
        end
        redirect_to restaurants_path
    end

    def clear_filters
        session.delete(:filters)
        redirect_to restaurants_path
    end

end