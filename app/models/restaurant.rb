class Restaurant < ApplicationRecord
    has_many :dishes
    has_many :users, through: :restaurants
    validates :name, presence: true
    validates :cuisine, presence: true

    scope :american, -> { where(cuisine: "American")}
    scope :thai, -> { where(cuisine: "Thai")}
    scope :indian, -> { where(cuisine: "Indian")}
    scope :chinese, -> { where(cuisine: "Chinese")}
    scope :mexican, -> { where(cuisine: "Mexican")}

    scope :byob, -> { where(byob: true) }
    scope :no_byob, -> { where(byob: false) }
    scope :child_friendly, -> { where(child_friendly: true) }
    scope :no_child_friendly, -> { where(child_friendly: false) }

    def self.cuisines
        self.pluck(:cuisine).uniq
    end
end
