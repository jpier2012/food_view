class Restaurant < ApplicationRecord
    has_many :dishes
    has_many :users, through: :restaurants
end
