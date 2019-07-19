class Restaurant < ApplicationRecord
    has_many :dishes
    has_many :users, through: :restaurants
    validates :name, presence: true
    validates :cuisine, presence: true

    scope :american, -> { where("lower(cuisine) = ?", "american")}
    scope :thai, -> { where("lower(cuisine) = ?", "thai")}
    scope :indian, -> { where("lower(cuisine) = ?", "indian")}
    scope :chinese, -> { where("lower(cuisine) = ?", "chinese")}
    scope :byob, -> { where(byob: true) }
    scope :no_byob, -> { where(byob: false) }

    def self.cuisines
        self.pluck(:cuisine).uniq
    end
end
