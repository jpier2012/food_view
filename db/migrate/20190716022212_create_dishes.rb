class CreateDishes < ActiveRecord::Migration[5.2]
  def change
    create_table :dishes do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.integer :taste
      t.integer :overall_value
      t.integer :dining_experience

      t.timestamps
    end
  end
end
