class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :cuisine
      t.string :dress_code
      t.boolean :outdoor_seating?
      t.boolean :child_friendly?
      t.boolean :open_bar?
      t.boolean :byob?

      t.timestamps
    end
  end
end
