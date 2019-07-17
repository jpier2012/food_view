class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :cuisine
      t.string :dress_code
      t.boolean :outdoor_seating, null: false
      t.boolean :child_friendly, null: false
      t.boolean :open_bar, null: false
      t.boolean :byob, null: false

      t.timestamps
    end
  end
end
