class Restaurant < ApplicationRecord
    has_many :dishes
    has_many :users, through: :restaurants

    scope :american, -> { where("lower(cuisine) = ?", "american")}
    scope :thai, -> { where("lower(cuisine) = ?", "thai")}
    scope :indian, -> { where("lower(cuisine) = ?", "indian")}
    scope :chinese, -> { where("lower(cuisine) = ?", "chinese")}
end
